; ModuleID = '/home/carl/AnghaBench/TDengine/src/util/src/extr_textbuffer.c_printBinaryDataEx.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/util/src/extr_textbuffer.c_printBinaryDataEx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@TSDB_FUNC_LAST_DST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"%lld,%d\09\00", align 1
@TSDB_KEYSIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"%lld,%lld\09\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"%lld,%s\09\00", align 1
@TSDB_FUNC_AVG = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [9 x i8] c"%f,%lld\09\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\09\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%lld\09\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%s\09\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, %struct.TYPE_3__*)* @printBinaryDataEx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @printBinaryDataEx(i8* %0, i32 %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %6, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @TSDB_FUNC_LAST_DST, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %101

12:                                               ; preds = %3
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %88 [
    i32 128, label %16
    i32 130, label %28
    i32 129, label %40
    i32 135, label %40
    i32 132, label %52
    i32 133, label %65
    i32 134, label %77
    i32 131, label %87
  ]

16:                                               ; preds = %12
  %17 = load i8*, i8** %4, align 8
  %18 = bitcast i8* %17 to double*
  %19 = load double, double* %18, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = load i32, i32* @TSDB_KEYSIZE, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %20, i64 %22
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  %25 = bitcast i8* %24 to i32*
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), double %19, i32 %26)
  br label %100

28:                                               ; preds = %12
  %29 = load i8*, i8** %4, align 8
  %30 = bitcast i8* %29 to double*
  %31 = load double, double* %30, align 8
  %32 = load i8*, i8** %4, align 8
  %33 = load i32, i32* @TSDB_KEYSIZE, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  %37 = bitcast i8* %36 to i32*
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), double %31, i32 %38)
  br label %100

40:                                               ; preds = %12, %12
  %41 = load i8*, i8** %4, align 8
  %42 = bitcast i8* %41 to double*
  %43 = load double, double* %42, align 8
  %44 = load i8*, i8** %4, align 8
  %45 = load i32, i32* @TSDB_KEYSIZE, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  %49 = bitcast i8* %48 to double*
  %50 = load double, double* %49, align 8
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), double %43, double %50)
  br label %100

52:                                               ; preds = %12
  %53 = load i8*, i8** %4, align 8
  %54 = bitcast i8* %53 to double*
  %55 = load double, double* %54, align 8
  %56 = load i8*, i8** %4, align 8
  %57 = load i32, i32* @TSDB_KEYSIZE, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  %60 = getelementptr inbounds i8, i8* %59, i64 1
  %61 = bitcast i8* %60 to float*
  %62 = load float, float* %61, align 4
  %63 = fpext float %62 to double
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), double %55, double %63)
  br label %100

65:                                               ; preds = %12
  %66 = load i8*, i8** %4, align 8
  %67 = bitcast i8* %66 to double*
  %68 = load double, double* %67, align 8
  %69 = load i8*, i8** %4, align 8
  %70 = load i32, i32* @TSDB_KEYSIZE, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %69, i64 %71
  %73 = getelementptr inbounds i8, i8* %72, i64 1
  %74 = bitcast i8* %73 to double*
  %75 = load double, double* %74, align 8
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), double %68, double %75)
  br label %100

77:                                               ; preds = %12
  %78 = load i8*, i8** %4, align 8
  %79 = bitcast i8* %78 to double*
  %80 = load double, double* %79, align 8
  %81 = load i8*, i8** %4, align 8
  %82 = load i32, i32* @TSDB_KEYSIZE, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  %85 = getelementptr inbounds i8, i8* %84, i64 1
  %86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), double %80, i8* %85)
  br label %100

87:                                               ; preds = %12
  br label %88

88:                                               ; preds = %12, %87
  %89 = load i8*, i8** %4, align 8
  %90 = bitcast i8* %89 to double*
  %91 = load double, double* %90, align 8
  %92 = load i8*, i8** %4, align 8
  %93 = load i32, i32* @TSDB_KEYSIZE, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %92, i64 %94
  %96 = getelementptr inbounds i8, i8* %95, i64 1
  %97 = bitcast i8* %96 to i32*
  %98 = load i32, i32* %97, align 4
  %99 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), double %91, i32 %98)
  br label %100

100:                                              ; preds = %88, %77, %65, %52, %40, %28, %16
  br label %158

101:                                              ; preds = %3
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @TSDB_FUNC_AVG, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %117

107:                                              ; preds = %101
  %108 = load i8*, i8** %4, align 8
  %109 = bitcast i8* %108 to double*
  %110 = load double, double* %109, align 8
  %111 = load i8*, i8** %4, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 8
  %113 = getelementptr inbounds i8, i8* %112, i64 1
  %114 = bitcast i8* %113 to double*
  %115 = load double, double* %114, align 8
  %116 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), double %110, double %115)
  br label %157

117:                                              ; preds = %101
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  switch i32 %120, label %151 [
    i32 128, label %121
    i32 130, label %126
    i32 129, label %131
    i32 135, label %131
    i32 132, label %136
    i32 133, label %142
    i32 134, label %147
    i32 131, label %150
  ]

121:                                              ; preds = %117
  %122 = load i8*, i8** %4, align 8
  %123 = bitcast i8* %122 to i32*
  %124 = load i32, i32* %123, align 4
  %125 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %124)
  br label %156

126:                                              ; preds = %117
  %127 = load i8*, i8** %4, align 8
  %128 = bitcast i8* %127 to i32*
  %129 = load i32, i32* %128, align 4
  %130 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %129)
  br label %156

131:                                              ; preds = %117, %117
  %132 = load i8*, i8** %4, align 8
  %133 = bitcast i8* %132 to double*
  %134 = load double, double* %133, align 8
  %135 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), double %134)
  br label %156

136:                                              ; preds = %117
  %137 = load i8*, i8** %4, align 8
  %138 = bitcast i8* %137 to float*
  %139 = load float, float* %138, align 4
  %140 = fpext float %139 to double
  %141 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), double %140)
  br label %156

142:                                              ; preds = %117
  %143 = load i8*, i8** %4, align 8
  %144 = bitcast i8* %143 to double*
  %145 = load double, double* %144, align 8
  %146 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), double %145)
  br label %156

147:                                              ; preds = %117
  %148 = load i8*, i8** %4, align 8
  %149 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* %148)
  br label %156

150:                                              ; preds = %117
  br label %151

151:                                              ; preds = %117, %150
  %152 = load i8*, i8** %4, align 8
  %153 = bitcast i8* %152 to double*
  %154 = load double, double* %153, align 8
  %155 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), double %154)
  br label %156

156:                                              ; preds = %151, %147, %142, %136, %131, %126, %121
  br label %157

157:                                              ; preds = %156, %107
  br label %158

158:                                              ; preds = %157, %100
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
