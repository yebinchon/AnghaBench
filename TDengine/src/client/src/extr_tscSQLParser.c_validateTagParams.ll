; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_validateTagParams.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_validateTagParams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i64, i32 }

@.str = private unnamed_addr constant [30 x i8] c"invalid number of tag columns\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"tag length too long\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"duplicated column names\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"timestamp not allowed in tags\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"invalid data type in tags\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"invalid tag name\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"invalid binary/nchar tag length\00", align 1
@TSDB_MAX_TAGS = common dso_local global i32 0, align 4
@TSDB_MAX_TAGS_LEN = common dso_local global i64 0, align 8
@TSDB_DATA_TYPE_TIMESTAMP = common dso_local global i64 0, align 8
@TSDB_DATA_TYPE_BOOL = common dso_local global i64 0, align 8
@TSDB_DATA_TYPE_NCHAR = common dso_local global i64 0, align 8
@TSDB_DATA_TYPE_BINARY = common dso_local global i64 0, align 8
@TSDB_CODE_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, %struct.TYPE_7__*, i32*)* @validateTagParams to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validateTagParams(%struct.TYPE_7__* %0, %struct.TYPE_7__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store i32* %2, i32** %7, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %20 = icmp ne %struct.TYPE_7__* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8** %10, align 8
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8** %11, align 8
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8** %12, align 8
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8** %13, align 8
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i8** %14, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %25, 1
  br i1 %26, label %33, label %27

27:                                               ; preds = %3
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @TSDB_MAX_TAGS, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %27, %3
  %34 = load i32*, i32** %7, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = call i32 @setErrMsg(i32* %34, i8* %35)
  store i32 0, i32* %4, align 4
  br label %218

37:                                               ; preds = %27
  store i64 0, i64* %15, align 8
  store i64 0, i64* %16, align 8
  br label %38

38:                                               ; preds = %55, %37
  %39 = load i64, i64* %16, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = icmp ult i64 %39, %43
  br i1 %44, label %45, label %58

45:                                               ; preds = %38
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = load i64, i64* %16, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %15, align 8
  %54 = add i64 %53, %52
  store i64 %54, i64* %15, align 8
  br label %55

55:                                               ; preds = %45
  %56 = load i64, i64* %16, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %16, align 8
  br label %38

58:                                               ; preds = %38
  %59 = load i64, i64* %15, align 8
  %60 = load i64, i64* @TSDB_MAX_TAGS_LEN, align 8
  %61 = icmp ugt i64 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load i32*, i32** %7, align 8
  %64 = load i8*, i8** %9, align 8
  %65 = call i32 @setErrMsg(i32* %63, i8* %64)
  store i32 0, i32* %4, align 4
  br label %218

66:                                               ; preds = %58
  store i64 0, i64* %17, align 8
  br label %67

67:                                               ; preds = %90, %66
  %68 = load i64, i64* %17, align 8
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = sext i32 %71 to i64
  %73 = icmp ult i64 %68, %72
  br i1 %73, label %74, label %93

74:                                               ; preds = %67
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = load i64, i64* %17, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @has(%struct.TYPE_7__* %75, i64 0, i32 %82)
  %84 = icmp eq i32 %83, 1
  br i1 %84, label %85, label %89

85:                                               ; preds = %74
  %86 = load i32*, i32** %7, align 8
  %87 = load i8*, i8** %10, align 8
  %88 = call i32 @setErrMsg(i32* %86, i8* %87)
  store i32 0, i32* %4, align 4
  br label %218

89:                                               ; preds = %74
  br label %90

90:                                               ; preds = %89
  %91 = load i64, i64* %17, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %17, align 8
  br label %67

93:                                               ; preds = %67
  store i64 0, i64* %18, align 8
  br label %94

94:                                               ; preds = %214, %93
  %95 = load i64, i64* %18, align 8
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = sext i32 %98 to i64
  %100 = icmp ult i64 %95, %99
  br i1 %100, label %101, label %217

101:                                              ; preds = %94
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = load i64, i64* %18, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @TSDB_DATA_TYPE_TIMESTAMP, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %101
  %112 = load i32*, i32** %7, align 8
  %113 = load i8*, i8** %11, align 8
  %114 = call i32 @setErrMsg(i32* %112, i8* %113)
  store i32 0, i32* %4, align 4
  br label %218

115:                                              ; preds = %101
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %117, align 8
  %119 = load i64, i64* %18, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @TSDB_DATA_TYPE_BOOL, align 8
  %124 = icmp slt i64 %122, %123
  br i1 %124, label %135, label %125

125:                                              ; preds = %115
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %127, align 8
  %129 = load i64, i64* %18, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @TSDB_DATA_TYPE_NCHAR, align 8
  %134 = icmp sgt i64 %132, %133
  br i1 %134, label %135, label %139

135:                                              ; preds = %125, %115
  %136 = load i32*, i32** %7, align 8
  %137 = load i8*, i8** %12, align 8
  %138 = call i32 @setErrMsg(i32* %136, i8* %137)
  store i32 0, i32* %4, align 4
  br label %218

139:                                              ; preds = %125
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 1
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %141, align 8
  %143 = load i64, i64* %18, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @TSDB_DATA_TYPE_BINARY, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %158

149:                                              ; preds = %139
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 1
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %151, align 8
  %153 = load i64, i64* %18, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = icmp ule i64 %156, 0
  br i1 %157, label %177, label %158

158:                                              ; preds = %149, %139
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 1
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %160, align 8
  %162 = load i64, i64* %18, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @TSDB_DATA_TYPE_NCHAR, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %168, label %181

168:                                              ; preds = %158
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 1
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %170, align 8
  %172 = load i64, i64* %18, align 8
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = icmp ule i64 %175, 0
  br i1 %176, label %177, label %181

177:                                              ; preds = %168, %149
  %178 = load i32*, i32** %7, align 8
  %179 = load i8*, i8** %14, align 8
  %180 = call i32 @setErrMsg(i32* %178, i8* %179)
  store i32 0, i32* %4, align 4
  br label %218

181:                                              ; preds = %168, %158
  %182 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 1
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** %183, align 8
  %185 = load i64, i64* %18, align 8
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = call i64 @validateColumnName(i32 %188)
  %190 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  %191 = icmp ne i64 %189, %190
  br i1 %191, label %192, label %196

192:                                              ; preds = %181
  %193 = load i32*, i32** %7, align 8
  %194 = load i8*, i8** %13, align 8
  %195 = call i32 @setErrMsg(i32* %193, i8* %194)
  store i32 0, i32* %4, align 4
  br label %218

196:                                              ; preds = %181
  %197 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %198 = load i64, i64* %18, align 8
  %199 = add i64 %198, 1
  %200 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 1
  %202 = load %struct.TYPE_6__*, %struct.TYPE_6__** %201, align 8
  %203 = load i64, i64* %18, align 8
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 8
  %207 = call i32 @has(%struct.TYPE_7__* %197, i64 %199, i32 %206)
  %208 = icmp eq i32 %207, 1
  br i1 %208, label %209, label %213

209:                                              ; preds = %196
  %210 = load i32*, i32** %7, align 8
  %211 = load i8*, i8** %10, align 8
  %212 = call i32 @setErrMsg(i32* %210, i8* %211)
  store i32 0, i32* %4, align 4
  br label %218

213:                                              ; preds = %196
  br label %214

214:                                              ; preds = %213
  %215 = load i64, i64* %18, align 8
  %216 = add i64 %215, 1
  store i64 %216, i64* %18, align 8
  br label %94

217:                                              ; preds = %94
  store i32 1, i32* %4, align 4
  br label %218

218:                                              ; preds = %217, %209, %192, %177, %135, %111, %85, %62, %33
  %219 = load i32, i32* %4, align 4
  ret i32 %219
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @setErrMsg(i32*, i8*) #1

declare dso_local i32 @has(%struct.TYPE_7__*, i64, i32) #1

declare dso_local i64 @validateColumnName(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
