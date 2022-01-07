; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ledger.c_ledger_check_needblock.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ledger.c_ledger_check_needblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.ledger_entry* }
%struct.ledger_entry = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64 }
%struct.ledger_callback = type { i32, i32, i32 (i64, i32, i32)* }

@FALSE = common dso_local global i64 0, align 8
@LEDGER_ACTION_CALLBACK = common dso_local global i32 0, align 4
@LF_WARNED = common dso_local global i32 0, align 4
@LEDGER_WARNING_ROSE_ABOVE = common dso_local global i64 0, align 8
@LEDGER_WARNING_DIPPED_BELOW = common dso_local global i64 0, align 8
@LF_REFILL_SCHEDULED = common dso_local global i32 0, align 4
@LF_TRACKING_MAX = common dso_local global i32 0, align 4
@LEDGER_ACTION_BLOCK = common dso_local global i32 0, align 4
@LF_CALLED_BACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i64)* @ledger_check_needblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ledger_check_needblock(%struct.TYPE_9__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ledger_entry*, align 8
  %9 = alloca %struct.ledger_callback*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %175, %2
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %178

16:                                               ; preds = %10
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  %19 = load %struct.ledger_entry*, %struct.ledger_entry** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %19, i64 %21
  store %struct.ledger_entry* %22, %struct.ledger_entry** %8, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call %struct.ledger_callback* @entry_get_callback(%struct.TYPE_9__* %23, i32 %24)
  store %struct.ledger_callback* %25, %struct.ledger_callback** %9, align 8
  %26 = load %struct.ledger_entry*, %struct.ledger_entry** %8, align 8
  %27 = call i64 @limit_exceeded(%struct.ledger_entry* %26)
  %28 = load i64, i64* @FALSE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %91

30:                                               ; preds = %16
  %31 = load %struct.ledger_entry*, %struct.ledger_entry** %8, align 8
  %32 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @LEDGER_ACTION_CALLBACK, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %90

37:                                               ; preds = %30
  %38 = load %struct.ledger_callback*, %struct.ledger_callback** %9, align 8
  %39 = icmp ne %struct.ledger_callback* %38, null
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = load %struct.ledger_entry*, %struct.ledger_entry** %8, align 8
  %43 = call i64 @warn_level_exceeded(%struct.ledger_entry* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %67

45:                                               ; preds = %37
  %46 = load %struct.ledger_entry*, %struct.ledger_entry** %8, align 8
  %47 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %46, i32 0, i32 0
  %48 = load i32, i32* @LF_WARNED, align 4
  %49 = call i32 @flag_set(i32* %47, i32 %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @LF_WARNED, align 4
  %52 = and i32 %50, %51
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %66

54:                                               ; preds = %45
  %55 = load %struct.ledger_callback*, %struct.ledger_callback** %9, align 8
  %56 = getelementptr inbounds %struct.ledger_callback, %struct.ledger_callback* %55, i32 0, i32 2
  %57 = load i32 (i64, i32, i32)*, i32 (i64, i32, i32)** %56, align 8
  %58 = load i64, i64* @LEDGER_WARNING_ROSE_ABOVE, align 8
  %59 = load %struct.ledger_callback*, %struct.ledger_callback** %9, align 8
  %60 = getelementptr inbounds %struct.ledger_callback, %struct.ledger_callback* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.ledger_callback*, %struct.ledger_callback** %9, align 8
  %63 = getelementptr inbounds %struct.ledger_callback, %struct.ledger_callback* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 %57(i64 %58, i32 %61, i32 %64)
  br label %66

66:                                               ; preds = %54, %45
  br label %89

67:                                               ; preds = %37
  %68 = load %struct.ledger_entry*, %struct.ledger_entry** %8, align 8
  %69 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %68, i32 0, i32 0
  %70 = load i32, i32* @LF_WARNED, align 4
  %71 = call i32 @flag_clear(i32* %69, i32 %70)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @LF_WARNED, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %88

76:                                               ; preds = %67
  %77 = load %struct.ledger_callback*, %struct.ledger_callback** %9, align 8
  %78 = getelementptr inbounds %struct.ledger_callback, %struct.ledger_callback* %77, i32 0, i32 2
  %79 = load i32 (i64, i32, i32)*, i32 (i64, i32, i32)** %78, align 8
  %80 = load i64, i64* @LEDGER_WARNING_DIPPED_BELOW, align 8
  %81 = load %struct.ledger_callback*, %struct.ledger_callback** %9, align 8
  %82 = getelementptr inbounds %struct.ledger_callback, %struct.ledger_callback* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.ledger_callback*, %struct.ledger_callback** %9, align 8
  %85 = getelementptr inbounds %struct.ledger_callback, %struct.ledger_callback* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 %79(i64 %80, i32 %83, i32 %86)
  br label %88

88:                                               ; preds = %76, %67
  br label %89

89:                                               ; preds = %88, %66
  br label %90

90:                                               ; preds = %89, %30
  br label %175

91:                                               ; preds = %16
  %92 = load %struct.ledger_entry*, %struct.ledger_entry** %8, align 8
  %93 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @LF_REFILL_SCHEDULED, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %133

98:                                               ; preds = %91
  %99 = load %struct.ledger_entry*, %struct.ledger_entry** %8, align 8
  %100 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @LF_TRACKING_MAX, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  %105 = xor i1 %104, true
  %106 = zext i1 %105 to i32
  %107 = call i32 @assert(i32 %106)
  %108 = load %struct.ledger_entry*, %struct.ledger_entry** %8, align 8
  %109 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.ledger_entry*, %struct.ledger_entry** %8, align 8
  %114 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = add nsw i64 %112, %117
  %119 = load i64, i64* %4, align 8
  %120 = icmp sgt i64 %118, %119
  br i1 %120, label %121, label %132

121:                                              ; preds = %98
  %122 = load i64, i64* %4, align 8
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %124 = load i32, i32* %5, align 4
  %125 = call i32 @ledger_refill(i64 %122, %struct.TYPE_9__* %123, i32 %124)
  %126 = load %struct.ledger_entry*, %struct.ledger_entry** %8, align 8
  %127 = call i64 @limit_exceeded(%struct.ledger_entry* %126)
  %128 = load i64, i64* @FALSE, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %121
  br label %175

131:                                              ; preds = %121
  br label %132

132:                                              ; preds = %131, %98
  br label %133

133:                                              ; preds = %132, %91
  %134 = load %struct.ledger_entry*, %struct.ledger_entry** %8, align 8
  %135 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @LEDGER_ACTION_BLOCK, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %133
  store i32 1, i32* %7, align 4
  br label %141

141:                                              ; preds = %140, %133
  %142 = load %struct.ledger_entry*, %struct.ledger_entry** %8, align 8
  %143 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @LEDGER_ACTION_CALLBACK, align 4
  %146 = and i32 %144, %145
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %141
  br label %175

149:                                              ; preds = %141
  %150 = load %struct.ledger_callback*, %struct.ledger_callback** %9, align 8
  %151 = icmp ne %struct.ledger_callback* %150, null
  %152 = zext i1 %151 to i32
  %153 = call i32 @assert(i32 %152)
  %154 = load %struct.ledger_entry*, %struct.ledger_entry** %8, align 8
  %155 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %154, i32 0, i32 0
  %156 = load i32, i32* @LF_CALLED_BACK, align 4
  %157 = call i32 @flag_set(i32* %155, i32 %156)
  store i32 %157, i32* %6, align 4
  %158 = load i32, i32* %6, align 4
  %159 = load i32, i32* @LF_CALLED_BACK, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %149
  br label %175

163:                                              ; preds = %149
  %164 = load %struct.ledger_callback*, %struct.ledger_callback** %9, align 8
  %165 = getelementptr inbounds %struct.ledger_callback, %struct.ledger_callback* %164, i32 0, i32 2
  %166 = load i32 (i64, i32, i32)*, i32 (i64, i32, i32)** %165, align 8
  %167 = load i64, i64* @FALSE, align 8
  %168 = load %struct.ledger_callback*, %struct.ledger_callback** %9, align 8
  %169 = getelementptr inbounds %struct.ledger_callback, %struct.ledger_callback* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.ledger_callback*, %struct.ledger_callback** %9, align 8
  %172 = getelementptr inbounds %struct.ledger_callback, %struct.ledger_callback* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = call i32 %166(i64 %167, i32 %170, i32 %173)
  br label %175

175:                                              ; preds = %163, %162, %148, %130, %90
  %176 = load i32, i32* %5, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %5, align 4
  br label %10

178:                                              ; preds = %10
  %179 = load i32, i32* %7, align 4
  ret i32 %179
}

declare dso_local %struct.ledger_callback* @entry_get_callback(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @limit_exceeded(%struct.ledger_entry*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @warn_level_exceeded(%struct.ledger_entry*) #1

declare dso_local i32 @flag_set(i32*, i32) #1

declare dso_local i32 @flag_clear(i32*, i32) #1

declare dso_local i32 @ledger_refill(i64, %struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
