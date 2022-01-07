; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscFunctionImpl.c_getStatistics.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscFunctionImpl.c_getStatistics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TSDB_DATA_TYPE_BINARY = common dso_local global i32 0, align 4
@TSDB_DATA_TYPE_NCHAR = common dso_local global i32 0, align 4
@TSDB_DATA_TYPE_TINYINT = common dso_local global i32 0, align 4
@TSDB_DATA_TYPE_BOOL = common dso_local global i32 0, align 4
@TSDB_DATA_TYPE_SMALLINT = common dso_local global i32 0, align 4
@TSDB_DATA_TYPE_INT = common dso_local global i32 0, align 4
@TSDB_DATA_TYPE_BIGINT = common dso_local global i32 0, align 4
@TSDB_DATA_TYPE_TIMESTAMP = common dso_local global i32 0, align 4
@TSDB_DATA_TYPE_DOUBLE = common dso_local global i32 0, align 4
@TSDB_DATA_TYPE_FLOAT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @getStatistics(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32* %5, i32* %6, i32* %7, i32* %8, i32* %9, i32* %10) #0 {
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  store i8* %0, i8** %12, align 8
  store i8* %1, i8** %13, align 8
  store i32 %2, i32* %14, align 4
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32* %5, i32** %17, align 8
  store i32* %6, i32** %18, align 8
  store i32* %7, i32** %19, align 8
  store i32* %8, i32** %20, align 8
  store i32* %9, i32** %21, align 8
  store i32* %10, i32** %22, align 8
  %25 = load i8*, i8** %12, align 8
  %26 = bitcast i8* %25 to i32*
  store i32* %26, i32** %23, align 8
  %27 = load i32, i32* %16, align 4
  %28 = load i32, i32* @TSDB_DATA_TYPE_BINARY, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %34, label %30

30:                                               ; preds = %11
  %31 = load i32, i32* %16, align 4
  %32 = load i32, i32* @TSDB_DATA_TYPE_NCHAR, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %58

34:                                               ; preds = %30, %11
  store i32 0, i32* %24, align 4
  br label %35

35:                                               ; preds = %54, %34
  %36 = load i32, i32* %24, align 4
  %37 = load i32, i32* %15, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %57

39:                                               ; preds = %35
  %40 = load i8*, i8** %13, align 8
  %41 = load i32, i32* %24, align 4
  %42 = load i32, i32* %14, align 4
  %43 = mul nsw i32 %41, %42
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %40, i64 %44
  %46 = load i32, i32* %16, align 4
  %47 = call i64 @isNull(i8* %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %39
  %50 = load i32*, i32** %22, align 8
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 4
  br label %54

53:                                               ; preds = %39
  br label %54

54:                                               ; preds = %53, %49
  %55 = load i32, i32* %24, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %24, align 4
  br label %35

57:                                               ; preds = %35
  br label %169

58:                                               ; preds = %30
  %59 = load i32, i32* %16, align 4
  %60 = load i32, i32* @TSDB_DATA_TYPE_TINYINT, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %66, label %62

62:                                               ; preds = %58
  %63 = load i32, i32* %16, align 4
  %64 = load i32, i32* @TSDB_DATA_TYPE_BOOL, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %79

66:                                               ; preds = %62, %58
  %67 = load i32*, i32** %23, align 8
  %68 = load i32, i32* %16, align 4
  %69 = load i8*, i8** %13, align 8
  %70 = bitcast i8* %69 to i32*
  %71 = load i32, i32* %15, align 4
  %72 = load i32*, i32** %17, align 8
  %73 = load i32*, i32** %18, align 8
  %74 = load i32*, i32** %19, align 8
  %75 = load i32*, i32** %20, align 8
  %76 = load i32*, i32** %21, align 8
  %77 = load i32*, i32** %22, align 8
  %78 = call i32 @getStatics_i8(i32* %67, i32 %68, i32* %70, i32 %71, i32* %72, i32* %73, i32* %74, i32* %75, i32* %76, i32* %77)
  br label %168

79:                                               ; preds = %62
  %80 = load i32, i32* %16, align 4
  %81 = load i32, i32* @TSDB_DATA_TYPE_SMALLINT, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %95

83:                                               ; preds = %79
  %84 = load i32*, i32** %23, align 8
  %85 = load i8*, i8** %13, align 8
  %86 = bitcast i8* %85 to i32*
  %87 = load i32, i32* %15, align 4
  %88 = load i32*, i32** %17, align 8
  %89 = load i32*, i32** %18, align 8
  %90 = load i32*, i32** %19, align 8
  %91 = load i32*, i32** %20, align 8
  %92 = load i32*, i32** %21, align 8
  %93 = load i32*, i32** %22, align 8
  %94 = call i32 @getStatics_i16(i32* %84, i32* %86, i32 %87, i32* %88, i32* %89, i32* %90, i32* %91, i32* %92, i32* %93)
  br label %167

95:                                               ; preds = %79
  %96 = load i32, i32* %16, align 4
  %97 = load i32, i32* @TSDB_DATA_TYPE_INT, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %111

99:                                               ; preds = %95
  %100 = load i32*, i32** %23, align 8
  %101 = load i8*, i8** %13, align 8
  %102 = bitcast i8* %101 to i32*
  %103 = load i32, i32* %15, align 4
  %104 = load i32*, i32** %17, align 8
  %105 = load i32*, i32** %18, align 8
  %106 = load i32*, i32** %19, align 8
  %107 = load i32*, i32** %20, align 8
  %108 = load i32*, i32** %21, align 8
  %109 = load i32*, i32** %22, align 8
  %110 = call i32 @getStatics_i32(i32* %100, i32* %102, i32 %103, i32* %104, i32* %105, i32* %106, i32* %107, i32* %108, i32* %109)
  br label %166

111:                                              ; preds = %95
  %112 = load i32, i32* %16, align 4
  %113 = load i32, i32* @TSDB_DATA_TYPE_BIGINT, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %119, label %115

115:                                              ; preds = %111
  %116 = load i32, i32* %16, align 4
  %117 = load i32, i32* @TSDB_DATA_TYPE_TIMESTAMP, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %131

119:                                              ; preds = %115, %111
  %120 = load i32*, i32** %23, align 8
  %121 = load i8*, i8** %13, align 8
  %122 = bitcast i8* %121 to i32*
  %123 = load i32, i32* %15, align 4
  %124 = load i32*, i32** %17, align 8
  %125 = load i32*, i32** %18, align 8
  %126 = load i32*, i32** %19, align 8
  %127 = load i32*, i32** %20, align 8
  %128 = load i32*, i32** %21, align 8
  %129 = load i32*, i32** %22, align 8
  %130 = call i32 @getStatics_i64(i32* %120, i32* %122, i32 %123, i32* %124, i32* %125, i32* %126, i32* %127, i32* %128, i32* %129)
  br label %165

131:                                              ; preds = %115
  %132 = load i32, i32* %16, align 4
  %133 = load i32, i32* @TSDB_DATA_TYPE_DOUBLE, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %147

135:                                              ; preds = %131
  %136 = load i32*, i32** %23, align 8
  %137 = load i8*, i8** %13, align 8
  %138 = bitcast i8* %137 to double*
  %139 = load i32, i32* %15, align 4
  %140 = load i32*, i32** %17, align 8
  %141 = load i32*, i32** %18, align 8
  %142 = load i32*, i32** %19, align 8
  %143 = load i32*, i32** %20, align 8
  %144 = load i32*, i32** %21, align 8
  %145 = load i32*, i32** %22, align 8
  %146 = call i32 @getStatics_d(i32* %136, double* %138, i32 %139, i32* %140, i32* %141, i32* %142, i32* %143, i32* %144, i32* %145)
  br label %164

147:                                              ; preds = %131
  %148 = load i32, i32* %16, align 4
  %149 = load i32, i32* @TSDB_DATA_TYPE_FLOAT, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %151, label %163

151:                                              ; preds = %147
  %152 = load i32*, i32** %23, align 8
  %153 = load i8*, i8** %13, align 8
  %154 = bitcast i8* %153 to float*
  %155 = load i32, i32* %15, align 4
  %156 = load i32*, i32** %17, align 8
  %157 = load i32*, i32** %18, align 8
  %158 = load i32*, i32** %19, align 8
  %159 = load i32*, i32** %20, align 8
  %160 = load i32*, i32** %21, align 8
  %161 = load i32*, i32** %22, align 8
  %162 = call i32 @getStatics_f(i32* %152, float* %154, i32 %155, i32* %156, i32* %157, i32* %158, i32* %159, i32* %160, i32* %161)
  br label %163

163:                                              ; preds = %151, %147
  br label %164

164:                                              ; preds = %163, %135
  br label %165

165:                                              ; preds = %164, %119
  br label %166

166:                                              ; preds = %165, %99
  br label %167

167:                                              ; preds = %166, %83
  br label %168

168:                                              ; preds = %167, %66
  br label %169

169:                                              ; preds = %168, %57
  ret void
}

declare dso_local i64 @isNull(i8*, i32) #1

declare dso_local i32 @getStatics_i8(i32*, i32, i32*, i32, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @getStatics_i16(i32*, i32*, i32, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @getStatics_i32(i32*, i32*, i32, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @getStatics_i64(i32*, i32*, i32, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @getStatics_d(i32*, double*, i32, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @getStatics_f(i32*, float*, i32, i32*, i32*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
