; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_profile_prvd.c_profile_fire.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_profile_prvd.c_profile_fire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64, i64, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_18__ = type { i32 }

@VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @profile_fire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @profile_fire(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %11, %struct.TYPE_20__** %3, align 8
  %12 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  store %struct.TYPE_19__* %14, %struct.TYPE_19__** %4, align 8
  %15 = call i64 (...) @dtrace_gethrtime()
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = sub nsw i64 %15, %18
  store i64 %19, i64* %5, align 8
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, %22
  store i64 %26, i64* %24, align 8
  %27 = call i32 (...) @current_thread()
  %28 = call %struct.TYPE_16__* @find_kern_regs(i32 %27)
  store %struct.TYPE_16__* %28, %struct.TYPE_16__** %6, align 8
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %30 = icmp ne %struct.TYPE_16__* null, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %1
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %36 = call %struct.TYPE_17__* @saved_state64(%struct.TYPE_16__* %35)
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i64, i64* %5, align 8
  %41 = call i32 @dtrace_probe(i32 %34, i32 %39, i32 0, i64 %40, i32 0, i32 0)
  br label %86

42:                                               ; preds = %1
  %43 = call i32 (...) @current_thread()
  %44 = load i32, i32* @VALID, align 4
  %45 = call i32 @pal_register_cache_state(i32 %43, i32 %44)
  %46 = call i32 (...) @current_thread()
  %47 = call i64 @find_user_regs(i32 %46)
  %48 = inttoptr i64 %47 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %48, %struct.TYPE_16__** %7, align 8
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %50 = icmp eq %struct.TYPE_16__* null, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %42
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i64, i64* %5, align 8
  %56 = call i32 @dtrace_probe(i32 %54, i32 -889275714, i32 0, i64 %55, i32 0, i32 0)
  br label %85

57:                                               ; preds = %42
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %59 = call i64 @is_saved_state64(%struct.TYPE_16__* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %57
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %63 = call %struct.TYPE_17__* @saved_state64(%struct.TYPE_16__* %62)
  store %struct.TYPE_17__* %63, %struct.TYPE_17__** %8, align 8
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i64, i64* %5, align 8
  %72 = call i32 @dtrace_probe(i32 %66, i32 0, i32 %70, i64 %71, i32 0, i32 0)
  br label %84

73:                                               ; preds = %57
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %75 = call %struct.TYPE_18__* @saved_state32(%struct.TYPE_16__* %74)
  store %struct.TYPE_18__* %75, %struct.TYPE_18__** %9, align 8
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i64, i64* %5, align 8
  %83 = call i32 @dtrace_probe(i32 %78, i32 0, i32 %81, i64 %82, i32 0, i32 0)
  br label %84

84:                                               ; preds = %73, %61
  br label %85

85:                                               ; preds = %84, %51
  br label %86

86:                                               ; preds = %85, %31
  ret void
}

declare dso_local i64 @dtrace_gethrtime(...) #1

declare dso_local %struct.TYPE_16__* @find_kern_regs(i32) #1

declare dso_local i32 @current_thread(...) #1

declare dso_local i32 @dtrace_probe(i32, i32, i32, i64, i32, i32) #1

declare dso_local %struct.TYPE_17__* @saved_state64(%struct.TYPE_16__*) #1

declare dso_local i32 @pal_register_cache_state(i32, i32) #1

declare dso_local i64 @find_user_regs(i32) #1

declare dso_local i64 @is_saved_state64(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_18__* @saved_state32(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
