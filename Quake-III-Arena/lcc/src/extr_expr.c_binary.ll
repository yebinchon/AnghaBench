; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_expr.c_binary.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_expr.c_binary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64 }

@longdouble = common dso_local global %struct.TYPE_15__* null, align 8
@doubletype = common dso_local global %struct.TYPE_15__* null, align 8
@floattype = common dso_local global %struct.TYPE_15__* null, align 8
@unsignedlonglong = common dso_local global %struct.TYPE_15__* null, align 8
@longlong = common dso_local global %struct.TYPE_15__* null, align 8
@unsignedlong = common dso_local global %struct.TYPE_15__* null, align 8
@longtype = common dso_local global %struct.TYPE_15__* null, align 8
@unsignedtype = common dso_local global %struct.TYPE_15__* null, align 8
@inttype = common dso_local global %struct.TYPE_15__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_15__* @binary(%struct.TYPE_15__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  %6 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %7 = load %struct.TYPE_15__*, %struct.TYPE_15__** @longdouble, align 8
  %8 = icmp eq %struct.TYPE_15__* %6, %7
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** @longdouble, align 8
  %12 = icmp eq %struct.TYPE_15__* %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %9, %2
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** @longdouble, align 8
  store %struct.TYPE_15__* %14, %struct.TYPE_15__** %3, align 8
  br label %115

15:                                               ; preds = %9
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** @doubletype, align 8
  %18 = icmp eq %struct.TYPE_15__* %16, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** @doubletype, align 8
  %22 = icmp eq %struct.TYPE_15__* %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19, %15
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** @doubletype, align 8
  store %struct.TYPE_15__* %24, %struct.TYPE_15__** %3, align 8
  br label %115

25:                                               ; preds = %19
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** @floattype, align 8
  %28 = icmp eq %struct.TYPE_15__* %26, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** @floattype, align 8
  %32 = icmp eq %struct.TYPE_15__* %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29, %25
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** @floattype, align 8
  store %struct.TYPE_15__* %34, %struct.TYPE_15__** %3, align 8
  br label %115

35:                                               ; preds = %29
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** @unsignedlonglong, align 8
  %38 = icmp eq %struct.TYPE_15__* %36, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** @unsignedlonglong, align 8
  %42 = icmp eq %struct.TYPE_15__* %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %39, %35
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** @unsignedlonglong, align 8
  store %struct.TYPE_15__* %44, %struct.TYPE_15__** %3, align 8
  br label %115

45:                                               ; preds = %39
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** @longlong, align 8
  %48 = icmp eq %struct.TYPE_15__* %46, %47
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** @longlong, align 8
  %52 = icmp eq %struct.TYPE_15__* %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %49, %45
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** @longlong, align 8
  store %struct.TYPE_15__* %54, %struct.TYPE_15__** %3, align 8
  br label %115

55:                                               ; preds = %49
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** @unsignedlong, align 8
  %58 = icmp eq %struct.TYPE_15__* %56, %57
  br i1 %58, label %63, label %59

59:                                               ; preds = %55
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** @unsignedlong, align 8
  %62 = icmp eq %struct.TYPE_15__* %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %59, %55
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** @unsignedlong, align 8
  store %struct.TYPE_15__* %64, %struct.TYPE_15__** %3, align 8
  br label %115

65:                                               ; preds = %59
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** @longtype, align 8
  %68 = icmp eq %struct.TYPE_15__* %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** @unsignedtype, align 8
  %72 = icmp eq %struct.TYPE_15__* %70, %71
  br i1 %72, label %81, label %73

73:                                               ; preds = %69, %65
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** @unsignedtype, align 8
  %76 = icmp eq %struct.TYPE_15__* %74, %75
  br i1 %76, label %77, label %93

77:                                               ; preds = %73
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** @longtype, align 8
  %80 = icmp eq %struct.TYPE_15__* %78, %79
  br i1 %80, label %81, label %93

81:                                               ; preds = %77, %69
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** @longtype, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** @unsignedtype, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp sgt i64 %84, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %81
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** @longtype, align 8
  store %struct.TYPE_15__* %90, %struct.TYPE_15__** %3, align 8
  br label %115

91:                                               ; preds = %81
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** @unsignedlong, align 8
  store %struct.TYPE_15__* %92, %struct.TYPE_15__** %3, align 8
  br label %115

93:                                               ; preds = %77, %73
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** @longtype, align 8
  %96 = icmp eq %struct.TYPE_15__* %94, %95
  br i1 %96, label %101, label %97

97:                                               ; preds = %93
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** @longtype, align 8
  %100 = icmp eq %struct.TYPE_15__* %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %97, %93
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** @longtype, align 8
  store %struct.TYPE_15__* %102, %struct.TYPE_15__** %3, align 8
  br label %115

103:                                              ; preds = %97
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** @unsignedtype, align 8
  %106 = icmp eq %struct.TYPE_15__* %104, %105
  br i1 %106, label %111, label %107

107:                                              ; preds = %103
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** @unsignedtype, align 8
  %110 = icmp eq %struct.TYPE_15__* %108, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %107, %103
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** @unsignedtype, align 8
  store %struct.TYPE_15__* %112, %struct.TYPE_15__** %3, align 8
  br label %115

113:                                              ; preds = %107
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** @inttype, align 8
  store %struct.TYPE_15__* %114, %struct.TYPE_15__** %3, align 8
  br label %115

115:                                              ; preds = %113, %111, %101, %91, %89, %63, %53, %43, %33, %23, %13
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  ret %struct.TYPE_15__* %116
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
