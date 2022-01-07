; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ledger.c_ledger_refill.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ledger.c_ledger_refill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.ledger_entry* }
%struct.ledger_entry = type { i64, i32, i64, i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64 }

@LEDGER_LIMIT_INFINITY = common dso_local global i64 0, align 8
@LF_TRACK_CREDIT_ONLY = common dso_local global i32 0, align 4
@LF_REFILL_INPROGRESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"now=%llu, ledger=%p, entry=%d, balance=%lld, due=%lld\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Refill %lld %lld->%lld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, %struct.TYPE_8__*, i32)* @ledger_refill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ledger_refill(i64 %0, %struct.TYPE_8__* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ledger_entry*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br label %21

21:                                               ; preds = %15, %3
  %22 = phi i1 [ false, %3 ], [ %20, %15 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = load %struct.ledger_entry*, %struct.ledger_entry** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %27, i64 %29
  store %struct.ledger_entry* %30, %struct.ledger_entry** %10, align 8
  %31 = load %struct.ledger_entry*, %struct.ledger_entry** %10, align 8
  %32 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @LEDGER_LIMIT_INFINITY, align 8
  %35 = icmp ne i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load %struct.ledger_entry*, %struct.ledger_entry** %10, align 8
  %39 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @LF_TRACK_CREDIT_ONLY, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %21
  %45 = load %struct.ledger_entry*, %struct.ledger_entry** %10, align 8
  %46 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %47, 0
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  br label %205

51:                                               ; preds = %21
  %52 = load %struct.ledger_entry*, %struct.ledger_entry** %10, align 8
  %53 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %52, i32 0, i32 1
  %54 = load i32, i32* @LF_REFILL_INPROGRESS, align 4
  %55 = call i32 @flag_set(i32* %53, i32 %54)
  %56 = load i32, i32* @LF_REFILL_INPROGRESS, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  br label %205

60:                                               ; preds = %51
  %61 = load i64, i64* %4, align 8
  %62 = load %struct.ledger_entry*, %struct.ledger_entry** %10, align 8
  %63 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %62, i32 0, i32 4
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp sle i64 %61, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %60
  %69 = load %struct.ledger_entry*, %struct.ledger_entry** %10, align 8
  %70 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %69, i32 0, i32 1
  %71 = load i32, i32* @LF_REFILL_INPROGRESS, align 4
  %72 = call i32 @flag_clear(i32* %70, i32 %71)
  br label %205

73:                                               ; preds = %60
  %74 = load %struct.ledger_entry*, %struct.ledger_entry** %10, align 8
  %75 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %74, i32 0, i32 4
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  store i64 %78, i64* %8, align 8
  %79 = load i64, i64* %4, align 8
  %80 = load %struct.ledger_entry*, %struct.ledger_entry** %10, align 8
  %81 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %80, i32 0, i32 4
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = sub nsw i64 %79, %84
  store i64 %85, i64* %7, align 8
  %86 = load i64, i64* %8, align 8
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %73
  %89 = load i64, i64* %7, align 8
  %90 = load i64, i64* %8, align 8
  %91 = icmp slt i64 %89, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %88, %73
  %93 = load %struct.ledger_entry*, %struct.ledger_entry** %10, align 8
  %94 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %93, i32 0, i32 1
  %95 = load i32, i32* @LF_REFILL_INPROGRESS, align 4
  %96 = call i32 @flag_clear(i32* %94, i32 %95)
  br label %205

97:                                               ; preds = %88
  store i64 0, i64* %9, align 8
  br label %98

98:                                               ; preds = %106, %97
  %99 = load i64, i64* %9, align 8
  %100 = icmp slt i64 %99, 2
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load i64, i64* %7, align 8
  %103 = icmp sgt i64 %102, 0
  br label %104

104:                                              ; preds = %101, %98
  %105 = phi i1 [ false, %98 ], [ %103, %101 ]
  br i1 %105, label %106, label %112

106:                                              ; preds = %104
  %107 = load i64, i64* %9, align 8
  %108 = add nsw i64 %107, 1
  store i64 %108, i64* %9, align 8
  %109 = load i64, i64* %8, align 8
  %110 = load i64, i64* %7, align 8
  %111 = sub nsw i64 %110, %109
  store i64 %111, i64* %7, align 8
  br label %98

112:                                              ; preds = %104
  %113 = load i64, i64* %7, align 8
  %114 = icmp sgt i64 %113, 0
  br i1 %114, label %115, label %125

115:                                              ; preds = %112
  %116 = load i64, i64* %4, align 8
  %117 = load %struct.ledger_entry*, %struct.ledger_entry** %10, align 8
  %118 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %117, i32 0, i32 4
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = sub nsw i64 %116, %121
  %123 = load i64, i64* %8, align 8
  %124 = sdiv i64 %122, %123
  store i64 %124, i64* %9, align 8
  br label %125

125:                                              ; preds = %115, %112
  %126 = load %struct.ledger_entry*, %struct.ledger_entry** %10, align 8
  %127 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.ledger_entry*, %struct.ledger_entry** %10, align 8
  %130 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = sub nsw i64 %128, %131
  store i64 %132, i64* %11, align 8
  %133 = load i64, i64* %9, align 8
  %134 = load %struct.ledger_entry*, %struct.ledger_entry** %10, align 8
  %135 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = mul nsw i64 %133, %136
  store i64 %137, i64* %12, align 8
  %138 = load i64, i64* %11, align 8
  %139 = load i64, i64* %12, align 8
  %140 = sub nsw i64 %138, %139
  %141 = icmp slt i64 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %125
  %143 = load i64, i64* %11, align 8
  store i64 %143, i64* %12, align 8
  br label %144

144:                                              ; preds = %142, %125
  %145 = load i64, i64* %12, align 8
  %146 = icmp sge i64 %145, 0
  %147 = zext i1 %146 to i32
  %148 = load i64, i64* %4, align 8
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %150 = load i32, i32* %6, align 4
  %151 = load i64, i64* %11, align 8
  %152 = load i64, i64* %12, align 8
  %153 = call i32 @assertf(i32 %147, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i64 %148, %struct.TYPE_8__* %149, i32 %150, i64 %151, i64 %152)
  %154 = load i64, i64* %12, align 8
  %155 = load %struct.ledger_entry*, %struct.ledger_entry** %10, align 8
  %156 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %155, i32 0, i32 2
  %157 = call i32 @OSAddAtomic64(i64 %154, i64* %156)
  %158 = load %struct.ledger_entry*, %struct.ledger_entry** %10, align 8
  %159 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = icmp sge i64 %160, 0
  %162 = zext i1 %161 to i32
  %163 = call i32 @assert(i32 %162)
  %164 = load i64, i64* %11, align 8
  %165 = load i64, i64* %12, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %173

167:                                              ; preds = %144
  %168 = load i64, i64* %4, align 8
  %169 = load %struct.ledger_entry*, %struct.ledger_entry** %10, align 8
  %170 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %169, i32 0, i32 4
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 0
  store i64 %168, i64* %172, align 8
  br label %187

173:                                              ; preds = %144
  %174 = load %struct.ledger_entry*, %struct.ledger_entry** %10, align 8
  %175 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %174, i32 0, i32 4
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* %9, align 8
  %180 = mul nsw i64 %178, %179
  %181 = load %struct.ledger_entry*, %struct.ledger_entry** %10, align 8
  %182 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %181, i32 0, i32 4
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = add nsw i64 %185, %180
  store i64 %186, i64* %184, align 8
  br label %187

187:                                              ; preds = %173, %167
  %188 = load %struct.ledger_entry*, %struct.ledger_entry** %10, align 8
  %189 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %188, i32 0, i32 1
  %190 = load i32, i32* @LF_REFILL_INPROGRESS, align 4
  %191 = call i32 @flag_clear(i32* %189, i32 %190)
  %192 = load i64, i64* %9, align 8
  %193 = load i64, i64* %11, align 8
  %194 = load i64, i64* %11, align 8
  %195 = load i64, i64* %12, align 8
  %196 = sub nsw i64 %194, %195
  %197 = inttoptr i64 %196 to i8*
  %198 = call i32 @lprintf(i8* %197)
  %199 = load %struct.ledger_entry*, %struct.ledger_entry** %10, align 8
  %200 = call i32 @limit_exceeded(%struct.ledger_entry* %199)
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %205, label %202

202:                                              ; preds = %187
  %203 = load %struct.ledger_entry*, %struct.ledger_entry** %10, align 8
  %204 = call i32 @ledger_limit_entry_wakeup(%struct.ledger_entry* %203)
  br label %205

205:                                              ; preds = %44, %59, %68, %92, %202, %187
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @flag_set(i32*, i32) #1

declare dso_local i32 @flag_clear(i32*, i32) #1

declare dso_local i32 @assertf(i32, i8*, i64, %struct.TYPE_8__*, i32, i64, i64) #1

declare dso_local i32 @OSAddAtomic64(i64, i64*) #1

declare dso_local i32 @lprintf(i8*) #1

declare dso_local i32 @limit_exceeded(%struct.ledger_entry*) #1

declare dso_local i32 @ledger_limit_entry_wakeup(%struct.ledger_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
