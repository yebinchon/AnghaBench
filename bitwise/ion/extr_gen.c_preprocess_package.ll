; ModuleID = '/home/carl/AnghaBench/bitwise/ion/extr_gen.c_preprocess_package.c'
source_filename = "/home/carl/AnghaBench/bitwise/ion/extr_gen.c_preprocess_package.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8*, i64, %struct.TYPE_14__**, i8* }
%struct.TYPE_14__ = type { i64, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i8*, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i8* }

@.str = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"_\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"header\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"source\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"preamble\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"postamble\00", align 1
@DECL_NOTE = common dso_local global i64 0, align 8
@foreign_name = common dso_local global i64 0, align 8
@EXPR_STR = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [35 x i8] c"#foreign argument must be a string\00", align 1
@MAX_PATH = common dso_local global i32 0, align 4
@gen_preamble_buf = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@gen_postamble_buf = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [37 x i8] c"Unknown #foreign named argument '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*)* @preprocess_package to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @preprocess_package(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.TYPE_12__, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_11__, align 8
  %14 = alloca %struct.TYPE_13__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 3
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %56, label %24

24:                                               ; preds = %1
  store i8* null, i8** %3, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %4, align 8
  br label %28

28:                                               ; preds = %46, %24
  %29 = load i8*, i8** %4, align 8
  %30 = load i8, i8* %29, align 1
  %31 = icmp ne i8 %30, 0
  br i1 %31, label %32, label %49

32:                                               ; preds = %28
  %33 = load i8*, i8** %3, align 8
  %34 = load i8*, i8** %4, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 47
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %43

39:                                               ; preds = %32
  %40 = load i8*, i8** %4, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  br label %43

43:                                               ; preds = %39, %38
  %44 = phi i32 [ 95, %38 ], [ %42, %39 ]
  %45 = call i32 (i8*, i8*, ...) @buf_printf(i8* %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %43
  %47 = load i8*, i8** %4, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %4, align 8
  br label %28

49:                                               ; preds = %28
  %50 = load i8*, i8** %3, align 8
  %51 = call i32 (i8*, i8*, ...) @buf_printf(i8* %50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i8*, i8** %3, align 8
  %53 = call i8* @str_intern(i8* %52)
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 3
  store i8* %53, i8** %55, align 8
  br label %56

56:                                               ; preds = %49, %1
  %57 = call i8* @str_intern(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i8* %57, i8** %5, align 8
  %58 = call i8* @str_intern(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store i8* %58, i8** %6, align 8
  %59 = call i8* @str_intern(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  store i8* %59, i8** %7, align 8
  %60 = call i8* @str_intern(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  store i8* %60, i8** %8, align 8
  store i64 0, i64* %9, align 8
  br label %61

61:                                               ; preds = %196, %56
  %62 = load i64, i64* %9, align 8
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ult i64 %62, %65
  br i1 %66, label %67, label %199

67:                                               ; preds = %61
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %69, align 8
  %71 = load i64, i64* %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %70, i64 %71
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %72, align 8
  store %struct.TYPE_14__* %73, %struct.TYPE_14__** %10, align 8
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @DECL_NOTE, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %67
  br label %196

80:                                               ; preds = %67
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 2
  %83 = bitcast %struct.TYPE_12__* %11 to i8*
  %84 = bitcast %struct.TYPE_12__* %82 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %83, i8* align 8 %84, i64 24, i1 false)
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @foreign_name, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %195

89:                                               ; preds = %80
  store i64 0, i64* %12, align 8
  br label %90

90:                                               ; preds = %191, %89
  %91 = load i64, i64* %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp ult i64 %91, %93
  br i1 %94, label %95, label %194

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 2
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %96, align 8
  %98 = load i64, i64* %12, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i64 %98
  %100 = bitcast %struct.TYPE_11__* %13 to i8*
  %101 = bitcast %struct.TYPE_11__* %99 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %100, i8* align 8 %101, i64 24, i1 false)
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 2
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %102, align 8
  %104 = load i64, i64* %12, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 2
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %106, align 8
  store %struct.TYPE_13__* %107, %struct.TYPE_13__** %14, align 8
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @EXPR_STR, align 8
  %112 = icmp ne i64 %110, %111
  br i1 %112, label %113, label %118

113:                                              ; preds = %95
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = call i32 (i32, i8*, ...) @fatal_error(i32 %116, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  br label %118

118:                                              ; preds = %113, %95
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  %122 = load i8*, i8** %121, align 8
  store i8* %122, i8** %15, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %124 = load i8*, i8** %123, align 8
  %125 = load i8*, i8** %5, align 8
  %126 = icmp eq i8* %124, %125
  br i1 %126, label %127, label %137

127:                                              ; preds = %118
  %128 = load i32, i32* @MAX_PATH, align 4
  %129 = zext i32 %128 to i64
  %130 = call i8* @llvm.stacksave()
  store i8* %130, i8** %16, align 8
  %131 = alloca i8, i64 %129, align 16
  store i64 %129, i64* %17, align 8
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %133 = load i8*, i8** %15, align 8
  %134 = call i32 @put_include_path(i8* %131, %struct.TYPE_10__* %132, i8* %133)
  %135 = call i32 @add_foreign_header(i8* %131)
  %136 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %136)
  br label %190

137:                                              ; preds = %118
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %139 = load i8*, i8** %138, align 8
  %140 = load i8*, i8** %6, align 8
  %141 = icmp eq i8* %139, %140
  br i1 %141, label %142, label %152

142:                                              ; preds = %137
  %143 = load i32, i32* @MAX_PATH, align 4
  %144 = zext i32 %143 to i64
  %145 = call i8* @llvm.stacksave()
  store i8* %145, i8** %18, align 8
  %146 = alloca i8, i64 %144, align 16
  store i64 %144, i64* %19, align 8
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %148 = load i8*, i8** %15, align 8
  %149 = call i32 @put_include_path(i8* %146, %struct.TYPE_10__* %147, i8* %148)
  %150 = call i32 @add_foreign_source(i8* %146)
  %151 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %151)
  br label %189

152:                                              ; preds = %137
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %154 = load i8*, i8** %153, align 8
  %155 = load i8*, i8** %7, align 8
  %156 = icmp eq i8* %154, %155
  br i1 %156, label %157, label %166

157:                                              ; preds = %152
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @gen_buf_pos(i32* @gen_preamble_buf, i32 %159)
  %161 = load i32, i32* @gen_preamble_buf, align 4
  %162 = sext i32 %161 to i64
  %163 = inttoptr i64 %162 to i8*
  %164 = load i8*, i8** %15, align 8
  %165 = call i32 (i8*, i8*, ...) @buf_printf(i8* %163, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %164)
  br label %188

166:                                              ; preds = %152
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %168 = load i8*, i8** %167, align 8
  %169 = load i8*, i8** %8, align 8
  %170 = icmp eq i8* %168, %169
  br i1 %170, label %171, label %180

171:                                              ; preds = %166
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @gen_buf_pos(i32* @gen_postamble_buf, i32 %173)
  %175 = load i32, i32* @gen_postamble_buf, align 4
  %176 = sext i32 %175 to i64
  %177 = inttoptr i64 %176 to i8*
  %178 = load i8*, i8** %15, align 8
  %179 = call i32 (i8*, i8*, ...) @buf_printf(i8* %177, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %178)
  br label %187

180:                                              ; preds = %166
  %181 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %182 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %185 = load i8*, i8** %184, align 8
  %186 = call i32 (i32, i8*, ...) @fatal_error(i32 %183, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i8* %185)
  br label %187

187:                                              ; preds = %180, %171
  br label %188

188:                                              ; preds = %187, %157
  br label %189

189:                                              ; preds = %188, %142
  br label %190

190:                                              ; preds = %189, %127
  br label %191

191:                                              ; preds = %190
  %192 = load i64, i64* %12, align 8
  %193 = add i64 %192, 1
  store i64 %193, i64* %12, align 8
  br label %90

194:                                              ; preds = %90
  br label %195

195:                                              ; preds = %194, %80
  br label %196

196:                                              ; preds = %195, %79
  %197 = load i64, i64* %9, align 8
  %198 = add i64 %197, 1
  store i64 %198, i64* %9, align 8
  br label %61

199:                                              ; preds = %61
  ret void
}

declare dso_local i32 @buf_printf(i8*, i8*, ...) #1

declare dso_local i8* @str_intern(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @fatal_error(i32, i8*, ...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local i32 @put_include_path(i8*, %struct.TYPE_10__*, i8*) #1

declare dso_local i32 @add_foreign_header(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

declare dso_local i32 @add_foreign_source(i8*) #1

declare dso_local i32 @gen_buf_pos(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
