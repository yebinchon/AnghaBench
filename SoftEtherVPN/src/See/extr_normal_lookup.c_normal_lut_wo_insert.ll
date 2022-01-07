; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/See/extr_normal_lookup.c_normal_lut_wo_insert.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/See/extr_normal_lookup.c_normal_lut_wo_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i64, i64, i32*, i64, i64 }
%struct.TYPE_8__ = type { i32* }
%struct.time_conv = type { i32 }
%struct.TYPE_7__ = type { i64 }
%struct.timeval = type { i32 }

@TME_FALSE = common dso_local global i64 0, align 8
@TME_TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @normal_lut_wo_insert(i32* %0, %struct.TYPE_6__* %1, %struct.TYPE_8__* %2, %struct.time_conv* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.time_conv*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_7__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %7, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %8, align 8
  store %struct.time_conv* %3, %struct.time_conv** %9, align 8
  store i64 0, i64* %11, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = bitcast i32* %18 to i64*
  store i64* %19, i64** %12, align 8
  store i64 0, i64* %13, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 6
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %23, %struct.TYPE_7__** %15, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %17, align 8
  store i64 0, i64* %10, align 8
  br label %27

27:                                               ; preds = %38, %4
  %28 = load i64, i64* %10, align 8
  %29 = load i64, i64* %17, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %27
  %32 = load i64*, i64** %12, align 8
  %33 = load i64, i64* %10, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %13, align 8
  %37 = xor i64 %36, %35
  store i64 %37, i64* %13, align 8
  br label %38

38:                                               ; preds = %31
  %39 = load i64, i64* %10, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %10, align 8
  br label %27

41:                                               ; preds = %27
  %42 = load i64, i64* %13, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = urem i64 %42, %45
  store i64 %46, i64* %14, align 8
  br label %47

47:                                               ; preds = %135, %41
  %48 = load i64, i64* %11, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ule i64 %48, %51
  br i1 %52, label %53, label %136

53:                                               ; preds = %47
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %55 = load i64, i64* %14, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %53
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 5
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %17, align 8
  %65 = mul i64 4, %64
  %66 = add i64 %63, %65
  %67 = inttoptr i64 %66 to %struct.timeval*
  %68 = load %struct.time_conv*, %struct.time_conv** %9, align 8
  %69 = call i32 @GET_TIME(%struct.timeval* %67, %struct.time_conv* %68)
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 4
  store i32* null, i32** %71, align 8
  %72 = load i64, i64* @TME_FALSE, align 8
  store i64 %72, i64* %5, align 8
  br label %149

73:                                               ; preds = %53
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %78 = load i64, i64* %14, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = call i32 @SW_ULONG_AT(i64* %80, i32 0)
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %76, i64 %82
  store i32* %83, i32** %16, align 8
  store i64 0, i64* %10, align 8
  br label %84

84:                                               ; preds = %101, %73
  %85 = load i64, i64* %10, align 8
  %86 = load i64, i64* %17, align 8
  %87 = icmp ult i64 %85, %86
  br i1 %87, label %88, label %98

88:                                               ; preds = %84
  %89 = load i64*, i64** %12, align 8
  %90 = load i64, i64* %10, align 8
  %91 = getelementptr inbounds i64, i64* %89, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = load i32*, i32** %16, align 8
  %94 = load i64, i64* %10, align 8
  %95 = mul i64 %94, 4
  %96 = call i64 @ULONG_AT(i32* %93, i64 %95)
  %97 = icmp eq i64 %92, %96
  br label %98

98:                                               ; preds = %88, %84
  %99 = phi i1 [ false, %84 ], [ %97, %88 ]
  br i1 %99, label %100, label %104

100:                                              ; preds = %98
  br label %101

101:                                              ; preds = %100
  %102 = load i64, i64* %10, align 8
  %103 = add i64 %102, 1
  store i64 %103, i64* %10, align 8
  br label %84

104:                                              ; preds = %98
  %105 = load i64, i64* %10, align 8
  %106 = load i64, i64* %17, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %123

108:                                              ; preds = %104
  %109 = load i32*, i32** %16, align 8
  %110 = load i64, i64* %17, align 8
  %111 = mul i64 4, %110
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = bitcast i32* %112 to %struct.timeval*
  %114 = load %struct.time_conv*, %struct.time_conv** %9, align 8
  %115 = call i32 @GET_TIME(%struct.timeval* %113, %struct.time_conv* %114)
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %117 = load i64, i64* %14, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i64 %117
  %119 = bitcast %struct.TYPE_7__* %118 to i32*
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 4
  store i32* %119, i32** %121, align 8
  %122 = load i64, i64* @TME_TRUE, align 8
  store i64 %122, i64* %5, align 8
  br label %149

123:                                              ; preds = %104
  %124 = load i64, i64* %14, align 8
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  %128 = add i64 %124, %127
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = urem i64 %128, %131
  store i64 %132, i64* %14, align 8
  %133 = load i64, i64* %11, align 8
  %134 = add i64 %133, 1
  store i64 %134, i64* %11, align 8
  br label %135

135:                                              ; preds = %123
  br label %47

136:                                              ; preds = %47
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 5
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* %17, align 8
  %141 = mul i64 4, %140
  %142 = add i64 %139, %141
  %143 = inttoptr i64 %142 to %struct.timeval*
  %144 = load %struct.time_conv*, %struct.time_conv** %9, align 8
  %145 = call i32 @GET_TIME(%struct.timeval* %143, %struct.time_conv* %144)
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 4
  store i32* null, i32** %147, align 8
  %148 = load i64, i64* @TME_FALSE, align 8
  store i64 %148, i64* %5, align 8
  br label %149

149:                                              ; preds = %136, %108, %60
  %150 = load i64, i64* %5, align 8
  ret i64 %150
}

declare dso_local i32 @GET_TIME(%struct.timeval*, %struct.time_conv*) #1

declare dso_local i32 @SW_ULONG_AT(i64*, i32) #1

declare dso_local i64 @ULONG_AT(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
