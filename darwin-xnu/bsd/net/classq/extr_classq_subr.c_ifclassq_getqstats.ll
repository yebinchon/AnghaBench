; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/classq/extr_classq_subr.c_ifclassq_getqstats.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/classq/extr_classq_subr.c_ifclassq_getqstats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifclassq = type { i32, i32, i32 }
%struct.if_ifclassq_stats = type { i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ifclassq_getqstats(%struct.ifclassq* %0, i32 %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ifclassq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.if_ifclassq_stats*, align 8
  %11 = alloca i32, align 4
  store %struct.ifclassq* %0, %struct.ifclassq** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load i32*, i32** %9, align 8
  %13 = load i32, i32* %12, align 4
  %14 = sext i32 %13 to i64
  %15 = icmp ult i64 %14, 20
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %5, align 4
  br label %88

18:                                               ; preds = %4
  %19 = load i32, i32* @M_TEMP, align 4
  %20 = load i32, i32* @M_WAITOK, align 4
  %21 = load i32, i32* @M_ZERO, align 4
  %22 = or i32 %20, %21
  %23 = call %struct.if_ifclassq_stats* @_MALLOC(i32 20, i32 %19, i32 %22)
  store %struct.if_ifclassq_stats* %23, %struct.if_ifclassq_stats** %10, align 8
  %24 = load %struct.if_ifclassq_stats*, %struct.if_ifclassq_stats** %10, align 8
  %25 = icmp eq %struct.if_ifclassq_stats* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = load i32, i32* @ENOMEM, align 4
  store i32 %27, i32* %5, align 4
  br label %88

28:                                               ; preds = %18
  %29 = load %struct.ifclassq*, %struct.ifclassq** %6, align 8
  %30 = call i32 @IFCQ_LOCK(%struct.ifclassq* %29)
  %31 = load %struct.ifclassq*, %struct.ifclassq** %6, align 8
  %32 = call i32 @IFCQ_IS_READY(%struct.ifclassq* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %28
  %35 = load %struct.ifclassq*, %struct.ifclassq** %6, align 8
  %36 = call i32 @IFCQ_UNLOCK(%struct.ifclassq* %35)
  %37 = load %struct.if_ifclassq_stats*, %struct.if_ifclassq_stats** %10, align 8
  %38 = load i32, i32* @M_TEMP, align 4
  %39 = call i32 @_FREE(%struct.if_ifclassq_stats* %37, i32 %38)
  %40 = load i32, i32* @ENXIO, align 4
  store i32 %40, i32* %5, align 4
  br label %88

41:                                               ; preds = %28
  %42 = load %struct.ifclassq*, %struct.ifclassq** %6, align 8
  %43 = call i32 @IFCQ_LEN(%struct.ifclassq* %42)
  %44 = load %struct.if_ifclassq_stats*, %struct.if_ifclassq_stats** %10, align 8
  %45 = getelementptr inbounds %struct.if_ifclassq_stats, %struct.if_ifclassq_stats* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 4
  %46 = load %struct.ifclassq*, %struct.ifclassq** %6, align 8
  %47 = call i32 @IFCQ_MAXLEN(%struct.ifclassq* %46)
  %48 = load %struct.if_ifclassq_stats*, %struct.if_ifclassq_stats** %10, align 8
  %49 = getelementptr inbounds %struct.if_ifclassq_stats, %struct.if_ifclassq_stats* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 4
  %50 = load %struct.ifclassq*, %struct.ifclassq** %6, align 8
  %51 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.if_ifclassq_stats*, %struct.if_ifclassq_stats** %10, align 8
  %54 = getelementptr inbounds %struct.if_ifclassq_stats, %struct.if_ifclassq_stats* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  %55 = load %struct.ifclassq*, %struct.ifclassq** %6, align 8
  %56 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.if_ifclassq_stats*, %struct.if_ifclassq_stats** %10, align 8
  %59 = getelementptr inbounds %struct.if_ifclassq_stats, %struct.if_ifclassq_stats* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %struct.ifclassq*, %struct.ifclassq** %6, align 8
  %61 = getelementptr inbounds %struct.ifclassq, %struct.ifclassq* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.if_ifclassq_stats*, %struct.if_ifclassq_stats** %10, align 8
  %64 = getelementptr inbounds %struct.if_ifclassq_stats, %struct.if_ifclassq_stats* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  %65 = load %struct.ifclassq*, %struct.ifclassq** %6, align 8
  %66 = load i32, i32* %7, align 4
  %67 = load %struct.if_ifclassq_stats*, %struct.if_ifclassq_stats** %10, align 8
  %68 = call i32 @pktsched_getqstats(%struct.ifclassq* %65, i32 %66, %struct.if_ifclassq_stats* %67)
  store i32 %68, i32* %11, align 4
  %69 = load %struct.ifclassq*, %struct.ifclassq** %6, align 8
  %70 = call i32 @IFCQ_UNLOCK(%struct.ifclassq* %69)
  %71 = load i32, i32* %11, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %41
  %74 = load %struct.if_ifclassq_stats*, %struct.if_ifclassq_stats** %10, align 8
  %75 = ptrtoint %struct.if_ifclassq_stats* %74 to i32
  %76 = load i8*, i8** %8, align 8
  %77 = ptrtoint i8* %76 to i64
  %78 = trunc i64 %77 to i32
  %79 = call i32 @copyout(i32 %75, i32 %78, i32 20)
  store i32 %79, i32* %11, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %73
  %82 = load i32*, i32** %9, align 8
  store i32 20, i32* %82, align 4
  br label %83

83:                                               ; preds = %81, %73, %41
  %84 = load %struct.if_ifclassq_stats*, %struct.if_ifclassq_stats** %10, align 8
  %85 = load i32, i32* @M_TEMP, align 4
  %86 = call i32 @_FREE(%struct.if_ifclassq_stats* %84, i32 %85)
  %87 = load i32, i32* %11, align 4
  store i32 %87, i32* %5, align 4
  br label %88

88:                                               ; preds = %83, %34, %26, %16
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local %struct.if_ifclassq_stats* @_MALLOC(i32, i32, i32) #1

declare dso_local i32 @IFCQ_LOCK(%struct.ifclassq*) #1

declare dso_local i32 @IFCQ_IS_READY(%struct.ifclassq*) #1

declare dso_local i32 @IFCQ_UNLOCK(%struct.ifclassq*) #1

declare dso_local i32 @_FREE(%struct.if_ifclassq_stats*, i32) #1

declare dso_local i32 @IFCQ_LEN(%struct.ifclassq*) #1

declare dso_local i32 @IFCQ_MAXLEN(%struct.ifclassq*) #1

declare dso_local i32 @pktsched_getqstats(%struct.ifclassq*, i32, %struct.if_ifclassq_stats*) #1

declare dso_local i32 @copyout(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
