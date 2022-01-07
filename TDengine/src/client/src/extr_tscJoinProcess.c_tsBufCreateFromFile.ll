; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscJoinProcess.c_tsBufCreateFromFile.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscJoinProcess.c_tsBufCreateFromFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32, i64, i32, %struct.TYPE_16__, i64, i32*, %struct.TYPE_17__*, i32 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_18__ = type { i64, i32, i64, i32 }
%struct.stat = type { i64 }

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@TS_COMP_FILE_MAGIC = common dso_local global i64 0, align 8
@TSQL_SO_ASC = common dso_local global i64 0, align 8
@TSQL_SO_DESC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"invalid order info in buf:%d\00", align 1
@SEEK_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_19__* @tsBufCreateFromFile(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_18__, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_17__*, align 8
  %14 = alloca %struct.stat, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = call %struct.TYPE_19__* @calloc(i32 1, i64 64)
  store %struct.TYPE_19__* %15, %struct.TYPE_19__** %6, align 8
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %17 = icmp eq %struct.TYPE_19__* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %3, align 8
  br label %184

19:                                               ; preds = %2
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 8
  %22 = load i32, i32* %21, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = load i32, i32* @PATH_MAX, align 4
  %25 = call i32 @strncpy(i32 %22, i8* %23, i32 %24)
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 8
  %28 = load i32, i32* %27, align 8
  %29 = call i32* @fopen(i32 %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 6
  store i32* %29, i32** %31, align 8
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 6
  %34 = load i32*, i32** %33, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %19
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %3, align 8
  br label %184

37:                                               ; preds = %19
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %39 = call i32* @allocResForTSBuf(%struct.TYPE_19__* %38)
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %3, align 8
  br label %184

42:                                               ; preds = %37
  %43 = bitcast %struct.TYPE_18__* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %43, i8 0, i64 32, i1 false)
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 6
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* @SEEK_SET, align 4
  %48 = call i32 @fseek(i32* %46, i32 0, i32 %47)
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 6
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @fread(%struct.TYPE_18__* %7, i64 1, i32 32, i32* %51)
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @TS_COMP_FILE_MAGIC, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %42
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %3, align 8
  br label %184

58:                                               ; preds = %42
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp sgt i32 %60, %63
  br i1 %64, label %65, label %89

65:                                               ; preds = %58
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 7
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %71, align 8
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = sext i32 %75 to i64
  %77 = mul i64 4, %76
  %78 = trunc i64 %77 to i32
  %79 = call %struct.TYPE_17__* @realloc(%struct.TYPE_17__* %72, i32 %78)
  store %struct.TYPE_17__* %79, %struct.TYPE_17__** %8, align 8
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %81 = icmp eq %struct.TYPE_17__* %80, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %65
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %84 = call i32 @tsBufDestory(%struct.TYPE_19__* %83)
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %3, align 8
  br label %184

85:                                               ; preds = %65
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %87, i32 0, i32 7
  store %struct.TYPE_17__* %86, %struct.TYPE_17__** %88, align 8
  br label %89

89:                                               ; preds = %85, %58
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 2
  store i64 %95, i64* %97, align 8
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @TSQL_SO_ASC, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %116

103:                                              ; preds = %89
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @TSQL_SO_DESC, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %109, label %116

109:                                              ; preds = %103
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = call i32 @tscError(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %112)
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %115 = call i32 @tsBufDestory(%struct.TYPE_19__* %114)
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %3, align 8
  br label %184

116:                                              ; preds = %103, %89
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = sext i32 %119 to i64
  %121 = mul i64 32, %120
  store i64 %121, i64* %9, align 8
  %122 = load i64, i64* %9, align 8
  %123 = call %struct.TYPE_19__* @calloc(i32 1, i64 %122)
  %124 = bitcast %struct.TYPE_19__* %123 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %124, %struct.TYPE_18__** %10, align 8
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 6
  %127 = load i32*, i32** %126, align 8
  %128 = call i32 @ftell(i32* %127)
  store i32 %128, i32* %11, align 4
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %130 = load i64, i64* %9, align 8
  %131 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %131, i32 0, i32 6
  %133 = load i32*, i32** %132, align 8
  %134 = call i32 @fread(%struct.TYPE_18__* %129, i64 %130, i32 1, i32* %133)
  store i64 0, i64* %12, align 8
  br label %135

135:                                              ; preds = %154, %116
  %136 = load i64, i64* %12, align 8
  %137 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = sext i32 %139 to i64
  %141 = icmp ult i64 %136, %140
  br i1 %141, label %142, label %157

142:                                              ; preds = %135
  %143 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %143, i32 0, i32 7
  %145 = load %struct.TYPE_17__*, %struct.TYPE_17__** %144, align 8
  %146 = load i64, i64* %12, align 8
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %145, i64 %146
  store %struct.TYPE_17__* %147, %struct.TYPE_17__** %13, align 8
  %148 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %151 = load i64, i64* %12, align 8
  %152 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %150, i64 %151
  %153 = call i32 @memcpy(i32* %149, %struct.TYPE_18__* %152, i32 32)
  br label %154

154:                                              ; preds = %142
  %155 = load i64, i64* %12, align 8
  %156 = add i64 %155, 1
  store i64 %156, i64* %12, align 8
  br label %135

157:                                              ; preds = %135
  %158 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %159 = call i32 @free(%struct.TYPE_18__* %158)
  %160 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %160, i32 0, i32 6
  %162 = load i32*, i32** %161, align 8
  %163 = load i32, i32* @SEEK_END, align 4
  %164 = call i32 @fseek(i32* %162, i32 0, i32 %163)
  %165 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %165, i32 0, i32 6
  %167 = load i32*, i32** %166, align 8
  %168 = call i32 @fileno(i32* %167)
  %169 = call i32 @fstat(i32 %168, %struct.stat* %14)
  %170 = getelementptr inbounds %struct.stat, %struct.stat* %14, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %172, i32 0, i32 5
  store i64 %171, i64* %173, align 8
  %174 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %175 = call i32 @tsBufResetPos(%struct.TYPE_19__* %174)
  %176 = load i64, i64* @TSQL_SO_ASC, align 8
  %177 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %177, i32 0, i32 4
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %178, i32 0, i32 0
  store i64 %176, i64* %179, align 8
  %180 = load i32, i32* %5, align 4
  %181 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %181, i32 0, i32 3
  store i32 %180, i32* %182, align 8
  %183 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  store %struct.TYPE_19__* %183, %struct.TYPE_19__** %3, align 8
  br label %184

184:                                              ; preds = %157, %109, %82, %57, %41, %36, %18
  %185 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  ret %struct.TYPE_19__* %185
}

declare dso_local %struct.TYPE_19__* @calloc(i32, i64) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i32* @allocResForTSBuf(%struct.TYPE_19__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i32 @fread(%struct.TYPE_18__*, i64, i32, i32*) #1

declare dso_local %struct.TYPE_17__* @realloc(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @tsBufDestory(%struct.TYPE_19__*) #1

declare dso_local i32 @tscError(i8*, i64) #1

declare dso_local i32 @ftell(i32*) #1

declare dso_local i32 @memcpy(i32*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @free(%struct.TYPE_18__*) #1

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @fileno(i32*) #1

declare dso_local i32 @tsBufResetPos(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
