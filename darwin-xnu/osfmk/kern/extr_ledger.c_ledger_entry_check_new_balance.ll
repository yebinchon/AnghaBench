; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ledger.c_ledger_entry_check_new_balance.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ledger.c_ledger_entry_check_new_balance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ledger_entry = type { i32, i64, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_4__ = type { i64, i64 }

@LF_TRACKING_MAX = common dso_local global i32 0, align 4
@LF_REFILL_SCHEDULED = common dso_local global i32 0, align 4
@LEDGER_ACTION_BLOCK = common dso_local global i32 0, align 4
@LF_CALLED_BACK = common dso_local global i32 0, align 4
@LF_WAKE_NEEDED = common dso_local global i32 0, align 4
@LEDGER_ACTION_CALLBACK = common dso_local global i32 0, align 4
@LF_WARNED = common dso_local global i32 0, align 4
@LF_PANIC_ON_NEGATIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [95 x i8] c"ledger_entry_check_new_balance(%p,%d): negative ledger %p credit:%lld debit:%lld balance:%lld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ledger_entry_check_new_balance(i32 %0, i32 %1, i32 %2, %struct.ledger_entry* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ledger_entry*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.ledger_entry* %3, %struct.ledger_entry** %8, align 8
  %11 = load %struct.ledger_entry*, %struct.ledger_entry** %8, align 8
  %12 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @LF_TRACKING_MAX, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %39

17:                                               ; preds = %4
  %18 = load %struct.ledger_entry*, %struct.ledger_entry** %8, align 8
  %19 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.ledger_entry*, %struct.ledger_entry** %8, align 8
  %22 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = sub nsw i64 %20, %23
  store i64 %24, i64* %9, align 8
  %25 = load i64, i64* %9, align 8
  %26 = load %struct.ledger_entry*, %struct.ledger_entry** %8, align 8
  %27 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sgt i64 %25, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %17
  %33 = load i64, i64* %9, align 8
  %34 = load %struct.ledger_entry*, %struct.ledger_entry** %8, align 8
  %35 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i64 %33, i64* %37, align 8
  br label %38

38:                                               ; preds = %32, %17
  br label %39

39:                                               ; preds = %38, %4
  %40 = load %struct.ledger_entry*, %struct.ledger_entry** %8, align 8
  %41 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @LF_REFILL_SCHEDULED, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %76

46:                                               ; preds = %39
  %47 = load %struct.ledger_entry*, %struct.ledger_entry** %8, align 8
  %48 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @LF_TRACKING_MAX, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  %56 = call i64 (...) @mach_absolute_time()
  store i64 %56, i64* %10, align 8
  %57 = load i64, i64* %10, align 8
  %58 = load %struct.ledger_entry*, %struct.ledger_entry** %8, align 8
  %59 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = sub nsw i64 %57, %62
  %64 = load %struct.ledger_entry*, %struct.ledger_entry** %8, align 8
  %65 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp sgt i64 %63, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %46
  %71 = load i64, i64* %10, align 8
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @ledger_refill(i64 %71, i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %70, %46
  br label %76

76:                                               ; preds = %75, %39
  %77 = load %struct.ledger_entry*, %struct.ledger_entry** %8, align 8
  %78 = call i64 @limit_exceeded(%struct.ledger_entry* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %103

80:                                               ; preds = %76
  %81 = load %struct.ledger_entry*, %struct.ledger_entry** %8, align 8
  %82 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @LEDGER_ACTION_BLOCK, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %99, label %87

87:                                               ; preds = %80
  %88 = load %struct.ledger_entry*, %struct.ledger_entry** %8, align 8
  %89 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @LF_CALLED_BACK, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %102, label %94

94:                                               ; preds = %87
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* %7, align 4
  %97 = call i64 @entry_get_callback(i32 %95, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %94, %80
  %100 = load i32, i32* %5, align 4
  %101 = call i32 @act_set_astledger_async(i32 %100)
  br label %102

102:                                              ; preds = %99, %94, %87
  br label %148

103:                                              ; preds = %76
  %104 = load %struct.ledger_entry*, %struct.ledger_entry** %8, align 8
  %105 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @LF_WAKE_NEEDED, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %103
  %111 = load %struct.ledger_entry*, %struct.ledger_entry** %8, align 8
  %112 = call i32 @ledger_limit_entry_wakeup(%struct.ledger_entry* %111)
  br label %113

113:                                              ; preds = %110, %103
  %114 = load %struct.ledger_entry*, %struct.ledger_entry** %8, align 8
  %115 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @LEDGER_ACTION_CALLBACK, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %147

120:                                              ; preds = %113
  %121 = load %struct.ledger_entry*, %struct.ledger_entry** %8, align 8
  %122 = call i64 @warn_level_exceeded(%struct.ledger_entry* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %135

124:                                              ; preds = %120
  %125 = load %struct.ledger_entry*, %struct.ledger_entry** %8, align 8
  %126 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @LF_WARNED, align 4
  %129 = and i32 %127, %128
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %124
  %132 = load i32, i32* %5, align 4
  %133 = call i32 @act_set_astledger_async(i32 %132)
  br label %134

134:                                              ; preds = %131, %124
  br label %146

135:                                              ; preds = %120
  %136 = load %struct.ledger_entry*, %struct.ledger_entry** %8, align 8
  %137 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @LF_WARNED, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %135
  %143 = load i32, i32* %5, align 4
  %144 = call i32 @act_set_astledger_async(i32 %143)
  br label %145

145:                                              ; preds = %142, %135
  br label %146

146:                                              ; preds = %145, %134
  br label %147

147:                                              ; preds = %146, %113
  br label %148

148:                                              ; preds = %147, %102
  %149 = load %struct.ledger_entry*, %struct.ledger_entry** %8, align 8
  %150 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @LF_PANIC_ON_NEGATIVE, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %181

155:                                              ; preds = %148
  %156 = load %struct.ledger_entry*, %struct.ledger_entry** %8, align 8
  %157 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.ledger_entry*, %struct.ledger_entry** %8, align 8
  %160 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %159, i32 0, i32 2
  %161 = load i64, i64* %160, align 8
  %162 = icmp slt i64 %158, %161
  br i1 %162, label %163, label %181

163:                                              ; preds = %155
  %164 = load i32, i32* %6, align 4
  %165 = load i32, i32* %7, align 4
  %166 = load %struct.ledger_entry*, %struct.ledger_entry** %8, align 8
  %167 = load %struct.ledger_entry*, %struct.ledger_entry** %8, align 8
  %168 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.ledger_entry*, %struct.ledger_entry** %8, align 8
  %171 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %170, i32 0, i32 2
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.ledger_entry*, %struct.ledger_entry** %8, align 8
  %174 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = load %struct.ledger_entry*, %struct.ledger_entry** %8, align 8
  %177 = getelementptr inbounds %struct.ledger_entry, %struct.ledger_entry* %176, i32 0, i32 2
  %178 = load i64, i64* %177, align 8
  %179 = sub nsw i64 %175, %178
  %180 = call i32 @panic(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str, i64 0, i64 0), i32 %164, i32 %165, %struct.ledger_entry* %166, i64 %169, i64 %172, i64 %179)
  br label %181

181:                                              ; preds = %163, %155, %148
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @mach_absolute_time(...) #1

declare dso_local i32 @ledger_refill(i64, i32, i32) #1

declare dso_local i64 @limit_exceeded(%struct.ledger_entry*) #1

declare dso_local i64 @entry_get_callback(i32, i32) #1

declare dso_local i32 @act_set_astledger_async(i32) #1

declare dso_local i32 @ledger_limit_entry_wakeup(%struct.ledger_entry*) #1

declare dso_local i64 @warn_level_exceeded(%struct.ledger_entry*) #1

declare dso_local i32 @panic(i8*, i32, i32, %struct.ledger_entry*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
