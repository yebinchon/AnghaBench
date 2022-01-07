; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_profile_prvd.c_profile_tick.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_profile_prvd.c_profile_tick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_17__ = type { i32 }

@VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @profile_tick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @profile_tick(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %9, %struct.TYPE_18__** %3, align 8
  %10 = call i32 (...) @current_thread()
  %11 = call %struct.TYPE_15__* @find_kern_regs(i32 %10)
  store %struct.TYPE_15__* %11, %struct.TYPE_15__** %4, align 8
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %13 = icmp ne %struct.TYPE_15__* null, %12
  br i1 %13, label %14, label %24

14:                                               ; preds = %1
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %19 = call %struct.TYPE_16__* @saved_state64(%struct.TYPE_15__* %18)
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @dtrace_probe(i32 %17, i32 %22, i32 0, i32 0, i32 0, i32 0)
  br label %65

24:                                               ; preds = %1
  %25 = call i32 (...) @current_thread()
  %26 = load i32, i32* @VALID, align 4
  %27 = call i32 @pal_register_cache_state(i32 %25, i32 %26)
  %28 = call i32 (...) @current_thread()
  %29 = call i64 @find_user_regs(i32 %28)
  %30 = inttoptr i64 %29 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %30, %struct.TYPE_15__** %5, align 8
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %32 = icmp eq %struct.TYPE_15__* null, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %24
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @dtrace_probe(i32 %36, i32 -889275714, i32 0, i32 0, i32 0, i32 0)
  br label %64

38:                                               ; preds = %24
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %40 = call i64 @is_saved_state64(%struct.TYPE_15__* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %38
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %44 = call %struct.TYPE_16__* @saved_state64(%struct.TYPE_15__* %43)
  store %struct.TYPE_16__* %44, %struct.TYPE_16__** %6, align 8
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @dtrace_probe(i32 %47, i32 0, i32 %51, i32 0, i32 0, i32 0)
  br label %63

53:                                               ; preds = %38
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %55 = call %struct.TYPE_17__* @saved_state32(%struct.TYPE_15__* %54)
  store %struct.TYPE_17__* %55, %struct.TYPE_17__** %7, align 8
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @dtrace_probe(i32 %58, i32 0, i32 %61, i32 0, i32 0, i32 0)
  br label %63

63:                                               ; preds = %53, %42
  br label %64

64:                                               ; preds = %63, %33
  br label %65

65:                                               ; preds = %64, %14
  ret void
}

declare dso_local %struct.TYPE_15__* @find_kern_regs(i32) #1

declare dso_local i32 @current_thread(...) #1

declare dso_local i32 @dtrace_probe(i32, i32, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_16__* @saved_state64(%struct.TYPE_15__*) #1

declare dso_local i32 @pal_register_cache_state(i32, i32) #1

declare dso_local i64 @find_user_regs(i32) #1

declare dso_local i64 @is_saved_state64(%struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_17__* @saved_state32(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
