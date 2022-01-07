; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_sek.c_SekInitIdleDet.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_sek.c_SekInitIdleDet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@idledet_ptrs = common dso_local global i16** null, align 8
@idledet_bads = common dso_local global i64 0, align 8
@idledet_count = common dso_local global i64 0, align 8
@Pico = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@idledet_start_frame = common dso_local global i64 0, align 8
@idlehit_addrs = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SekInitIdleDet() #0 {
  %1 = alloca i16**, align 8
  %2 = load i16**, i16*** @idledet_ptrs, align 8
  %3 = call i16** @realloc(i16** %2, i32 2048)
  store i16** %3, i16*** %1, align 8
  %4 = load i16**, i16*** %1, align 8
  %5 = icmp eq i16** %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = load i16**, i16*** @idledet_ptrs, align 8
  %8 = call i32 @free(i16** %7)
  store i16** null, i16*** @idledet_ptrs, align 8
  br label %11

9:                                                ; preds = %0
  %10 = load i16**, i16*** %1, align 8
  store i16** %10, i16*** @idledet_ptrs, align 8
  br label %11

11:                                               ; preds = %9, %6
  store i64 0, i64* @idledet_bads, align 8
  store i64 0, i64* @idledet_count, align 8
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 0, i32 0), align 8
  %13 = add nsw i64 %12, 360
  store i64 %13, i64* @idledet_start_frame, align 8
  ret void
}

declare dso_local i16** @realloc(i16**, i32) #1

declare dso_local i32 @free(i16**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
