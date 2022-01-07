; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-db/extr_query.c_query_parse_method_call.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-db/extr_query.c_query_parse_method_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.registered_func = type { i32*, i64 }
%struct.invocation = type { i32, %struct.argument*, i32* }
%struct.argument = type { i32 }
%struct.buffer = type { i32 }

@QUERY_MAX_ARGS = common dso_local global i32 0, align 4
@registered_functions = common dso_local global %struct.registered_func* null, align 8
@.str = private unnamed_addr constant [2 x i8] c")\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.invocation*, i8**)* @query_parse_method_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @query_parse_method_call(i32 %0, %struct.invocation* %1, i8** %2) #0 {
  %4 = alloca %struct.buffer, align 4
  %5 = alloca %struct.buffer, align 4
  %6 = alloca %struct.invocation*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.registered_func*, align 8
  %15 = alloca %struct.buffer, align 4
  %16 = alloca %struct.buffer, align 4
  %17 = alloca %struct.buffer, align 4
  %18 = alloca %struct.buffer, align 4
  %19 = alloca %struct.buffer, align 4
  %20 = alloca %struct.buffer, align 4
  %21 = alloca %struct.buffer, align 4
  %22 = alloca %struct.buffer, align 4
  %23 = alloca %struct.buffer, align 4
  %24 = getelementptr inbounds %struct.buffer, %struct.buffer* %5, i32 0, i32 0
  store i32 %0, i32* %24, align 4
  store %struct.invocation* %1, %struct.invocation** %6, align 8
  store i8** %2, i8*** %7, align 8
  %25 = load i32, i32* @QUERY_MAX_ARGS, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %10, align 8
  %28 = alloca %struct.argument, i64 %26, align 16
  store i64 %26, i64* %11, align 8
  store i32 0, i32* %12, align 4
  store i8* null, i8** %13, align 8
  %29 = load %struct.registered_func*, %struct.registered_func** @registered_functions, align 8
  store %struct.registered_func* %29, %struct.registered_func** %14, align 8
  %30 = load %struct.invocation*, %struct.invocation** %6, align 8
  %31 = getelementptr inbounds %struct.invocation, %struct.invocation* %30, i32 0, i32 2
  store i32* null, i32** %31, align 8
  %32 = load i8**, i8*** %7, align 8
  %33 = getelementptr inbounds %struct.buffer, %struct.buffer* %5, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @query_get_ident(i32 %34, i8** %13, i64* %8, i8** %32)
  %36 = getelementptr inbounds %struct.buffer, %struct.buffer* %15, i32 0, i32 0
  store i32 %35, i32* %36, align 4
  %37 = bitcast %struct.buffer* %5 to i8*
  %38 = bitcast %struct.buffer* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %37, i8* align 4 %38, i64 4, i1 false)
  %39 = load i8**, i8*** %7, align 8
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %3
  br label %205

43:                                               ; preds = %3
  %44 = getelementptr inbounds %struct.buffer, %struct.buffer* %5, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @query_chomp(i32 %45)
  %47 = getelementptr inbounds %struct.buffer, %struct.buffer* %16, i32 0, i32 0
  store i32 %46, i32* %47, align 4
  %48 = bitcast %struct.buffer* %5 to i8*
  %49 = bitcast %struct.buffer* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %48, i8* align 4 %49, i64 4, i1 false)
  %50 = load i8**, i8*** %7, align 8
  %51 = getelementptr inbounds %struct.buffer, %struct.buffer* %5, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @query_expect_char(i32 %52, i8 signext 40, i8** %50)
  %54 = getelementptr inbounds %struct.buffer, %struct.buffer* %17, i32 0, i32 0
  store i32 %53, i32* %54, align 4
  %55 = bitcast %struct.buffer* %5 to i8*
  %56 = bitcast %struct.buffer* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %55, i8* align 4 %56, i64 4, i1 false)
  %57 = load i8**, i8*** %7, align 8
  %58 = load i8*, i8** %57, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %43
  br label %205

61:                                               ; preds = %43
  br label %62

62:                                               ; preds = %81, %61
  %63 = load %struct.registered_func*, %struct.registered_func** %14, align 8
  %64 = getelementptr inbounds %struct.registered_func, %struct.registered_func* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %84

67:                                               ; preds = %62
  %68 = load %struct.registered_func*, %struct.registered_func** %14, align 8
  %69 = getelementptr inbounds %struct.registered_func, %struct.registered_func* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i8*, i8** %13, align 8
  %72 = load i64, i64* %8, align 8
  %73 = call i64 @strncmp(i64 %70, i8* %71, i64 %72)
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %67
  %76 = load %struct.registered_func*, %struct.registered_func** %14, align 8
  %77 = getelementptr inbounds %struct.registered_func, %struct.registered_func* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.invocation*, %struct.invocation** %6, align 8
  %80 = getelementptr inbounds %struct.invocation, %struct.invocation* %79, i32 0, i32 2
  store i32* %78, i32** %80, align 8
  br label %84

81:                                               ; preds = %67
  %82 = load %struct.registered_func*, %struct.registered_func** %14, align 8
  %83 = getelementptr inbounds %struct.registered_func, %struct.registered_func* %82, i32 1
  store %struct.registered_func* %83, %struct.registered_func** %14, align 8
  br label %62

84:                                               ; preds = %75, %62
  %85 = load %struct.invocation*, %struct.invocation** %6, align 8
  %86 = getelementptr inbounds %struct.invocation, %struct.invocation* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %96, label %89

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.buffer, %struct.buffer* %5, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i8*, i8** %13, align 8
  %93 = load i64, i64* %8, align 8
  %94 = load i8**, i8*** %7, align 8
  %95 = call i32 @query_raise_unknown_function(i32 %91, i8* %92, i64 %93, i8** %94)
  br label %205

96:                                               ; preds = %84
  %97 = getelementptr inbounds %struct.buffer, %struct.buffer* %5, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @query_chomp(i32 %98)
  %100 = getelementptr inbounds %struct.buffer, %struct.buffer* %18, i32 0, i32 0
  store i32 %99, i32* %100, align 4
  %101 = bitcast %struct.buffer* %5 to i8*
  %102 = bitcast %struct.buffer* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %101, i8* align 4 %102, i64 4, i1 false)
  br label %103

103:                                              ; preds = %152, %96
  %104 = getelementptr inbounds %struct.buffer, %struct.buffer* %5, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @query_peek(i32 %105, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %107 = icmp ne i32 %106, 0
  %108 = xor i1 %107, true
  br i1 %108, label %109, label %159

109:                                              ; preds = %103
  %110 = load i32, i32* %12, align 4
  %111 = load i32, i32* @QUERY_MAX_ARGS, align 4
  %112 = icmp uge i32 %110, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %109
  %114 = load i8**, i8*** %7, align 8
  %115 = call i32 @query_raise_too_many_arguments(i8** %114)
  br label %205

116:                                              ; preds = %109
  %117 = load i32, i32* %12, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds %struct.argument, %struct.argument* %28, i64 %118
  %120 = load i8**, i8*** %7, align 8
  %121 = getelementptr inbounds %struct.buffer, %struct.buffer* %5, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @query_parse_argument(i32 %122, %struct.argument* %119, i8** %120)
  %124 = getelementptr inbounds %struct.buffer, %struct.buffer* %19, i32 0, i32 0
  store i32 %123, i32* %124, align 4
  %125 = bitcast %struct.buffer* %5 to i8*
  %126 = bitcast %struct.buffer* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %125, i8* align 4 %126, i64 4, i1 false)
  %127 = load i8**, i8*** %7, align 8
  %128 = load i8*, i8** %127, align 8
  %129 = icmp ne i8* %128, null
  br i1 %129, label %130, label %131

130:                                              ; preds = %116
  br label %205

131:                                              ; preds = %116
  %132 = load i32, i32* %12, align 4
  %133 = add i32 %132, 1
  store i32 %133, i32* %12, align 4
  %134 = getelementptr inbounds %struct.buffer, %struct.buffer* %5, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @query_chomp(i32 %135)
  %137 = getelementptr inbounds %struct.buffer, %struct.buffer* %20, i32 0, i32 0
  store i32 %136, i32* %137, align 4
  %138 = bitcast %struct.buffer* %5 to i8*
  %139 = bitcast %struct.buffer* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %138, i8* align 4 %139, i64 4, i1 false)
  %140 = load i8**, i8*** %7, align 8
  %141 = getelementptr inbounds %struct.buffer, %struct.buffer* %5, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @query_expect_char(i32 %142, i8 signext 44, i8** %140)
  %144 = getelementptr inbounds %struct.buffer, %struct.buffer* %21, i32 0, i32 0
  store i32 %143, i32* %144, align 4
  %145 = bitcast %struct.buffer* %5 to i8*
  %146 = bitcast %struct.buffer* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %145, i8* align 4 %146, i64 4, i1 false)
  %147 = load i8**, i8*** %7, align 8
  %148 = load i8*, i8** %147, align 8
  %149 = icmp ne i8* %148, null
  br i1 %149, label %150, label %152

150:                                              ; preds = %131
  %151 = load i8**, i8*** %7, align 8
  store i8* null, i8** %151, align 8
  br label %159

152:                                              ; preds = %131
  %153 = getelementptr inbounds %struct.buffer, %struct.buffer* %5, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @query_chomp(i32 %154)
  %156 = getelementptr inbounds %struct.buffer, %struct.buffer* %22, i32 0, i32 0
  store i32 %155, i32* %156, align 4
  %157 = bitcast %struct.buffer* %5 to i8*
  %158 = bitcast %struct.buffer* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %157, i8* align 4 %158, i64 4, i1 false)
  br label %103

159:                                              ; preds = %150, %103
  %160 = load i8**, i8*** %7, align 8
  %161 = getelementptr inbounds %struct.buffer, %struct.buffer* %5, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @query_expect_char(i32 %162, i8 signext 41, i8** %160)
  %164 = getelementptr inbounds %struct.buffer, %struct.buffer* %23, i32 0, i32 0
  store i32 %163, i32* %164, align 4
  %165 = bitcast %struct.buffer* %5 to i8*
  %166 = bitcast %struct.buffer* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %165, i8* align 4 %166, i64 4, i1 false)
  %167 = load i8**, i8*** %7, align 8
  %168 = load i8*, i8** %167, align 8
  %169 = icmp ne i8* %168, null
  br i1 %169, label %170, label %171

170:                                              ; preds = %159
  br label %205

171:                                              ; preds = %159
  %172 = load i32, i32* %12, align 4
  %173 = load %struct.invocation*, %struct.invocation** %6, align 8
  %174 = getelementptr inbounds %struct.invocation, %struct.invocation* %173, i32 0, i32 0
  store i32 %172, i32* %174, align 8
  %175 = load i32, i32* %12, align 4
  %176 = icmp ugt i32 %175, 0
  br i1 %176, label %177, label %184

177:                                              ; preds = %171
  %178 = load i32, i32* %12, align 4
  %179 = zext i32 %178 to i64
  %180 = mul i64 4, %179
  %181 = trunc i64 %180 to i32
  %182 = call i64 @malloc(i32 %181)
  %183 = inttoptr i64 %182 to %struct.argument*
  br label %185

184:                                              ; preds = %171
  br label %185

185:                                              ; preds = %184, %177
  %186 = phi %struct.argument* [ %183, %177 ], [ null, %184 ]
  %187 = load %struct.invocation*, %struct.invocation** %6, align 8
  %188 = getelementptr inbounds %struct.invocation, %struct.invocation* %187, i32 0, i32 1
  store %struct.argument* %186, %struct.argument** %188, align 8
  %189 = load %struct.invocation*, %struct.invocation** %6, align 8
  %190 = getelementptr inbounds %struct.invocation, %struct.invocation* %189, i32 0, i32 1
  %191 = load %struct.argument*, %struct.argument** %190, align 8
  %192 = icmp ne %struct.argument* %191, null
  br i1 %192, label %196, label %193

193:                                              ; preds = %185
  %194 = load i8**, i8*** %7, align 8
  %195 = call i32 @query_raise_enomem(i8** %194)
  br label %205

196:                                              ; preds = %185
  %197 = load %struct.invocation*, %struct.invocation** %6, align 8
  %198 = getelementptr inbounds %struct.invocation, %struct.invocation* %197, i32 0, i32 1
  %199 = load %struct.argument*, %struct.argument** %198, align 8
  %200 = load i32, i32* %12, align 4
  %201 = zext i32 %200 to i64
  %202 = mul i64 4, %201
  %203 = trunc i64 %202 to i32
  %204 = call i32 @memcpy(%struct.argument* %199, %struct.argument* %28, i32 %203)
  br label %219

205:                                              ; preds = %193, %170, %130, %113, %89, %60, %42
  store i32 0, i32* %9, align 4
  br label %206

206:                                              ; preds = %215, %205
  %207 = load i32, i32* %9, align 4
  %208 = load i32, i32* %12, align 4
  %209 = icmp ult i32 %207, %208
  br i1 %209, label %210, label %218

210:                                              ; preds = %206
  %211 = load i32, i32* %9, align 4
  %212 = zext i32 %211 to i64
  %213 = getelementptr inbounds %struct.argument, %struct.argument* %28, i64 %212
  %214 = call i32 @query_argument_free(%struct.argument* %213)
  br label %215

215:                                              ; preds = %210
  %216 = load i32, i32* %9, align 4
  %217 = add i32 %216, 1
  store i32 %217, i32* %9, align 4
  br label %206

218:                                              ; preds = %206
  br label %219

219:                                              ; preds = %218, %196
  %220 = bitcast %struct.buffer* %4 to i8*
  %221 = bitcast %struct.buffer* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %220, i8* align 4 %221, i64 4, i1 false)
  %222 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %222)
  %223 = getelementptr inbounds %struct.buffer, %struct.buffer* %4, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  ret i32 %224
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @query_get_ident(i32, i8**, i64*, i8**) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @query_chomp(i32) #2

declare dso_local i32 @query_expect_char(i32, i8 signext, i8**) #2

declare dso_local i64 @strncmp(i64, i8*, i64) #2

declare dso_local i32 @query_raise_unknown_function(i32, i8*, i64, i8**) #2

declare dso_local i32 @query_peek(i32, i8*) #2

declare dso_local i32 @query_raise_too_many_arguments(i8**) #2

declare dso_local i32 @query_parse_argument(i32, %struct.argument*, i8**) #2

declare dso_local i64 @malloc(i32) #2

declare dso_local i32 @query_raise_enomem(i8**) #2

declare dso_local i32 @memcpy(%struct.argument*, %struct.argument*, i32) #2

declare dso_local i32 @query_argument_free(%struct.argument*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
