; ModuleID = '/home/carl/AnghaBench/8cc/extr_cpp.c_subst.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_cpp.c_subst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_32__ = type { %struct.TYPE_31__* }
%struct.TYPE_31__ = type { i64, i32, i32*, i64 }

@TMACRO_PARAM = common dso_local global i64 0, align 8
@KHASHHASH = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_31__* (%struct.TYPE_32__*, %struct.TYPE_31__*, i32*)* @subst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_31__* @subst(%struct.TYPE_32__* %0, %struct.TYPE_31__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_32__*, align 8
  %5 = alloca %struct.TYPE_31__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_31__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_31__*, align 8
  %11 = alloca %struct.TYPE_31__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_31__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_31__*, align 8
  %17 = alloca %struct.TYPE_31__*, align 8
  store %struct.TYPE_32__* %0, %struct.TYPE_32__** %4, align 8
  store %struct.TYPE_31__* %1, %struct.TYPE_31__** %5, align 8
  store i32* %2, i32** %6, align 8
  %18 = call %struct.TYPE_31__* (...) @make_vector()
  store %struct.TYPE_31__* %18, %struct.TYPE_31__** %7, align 8
  %19 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_31__*, %struct.TYPE_31__** %20, align 8
  %22 = call i64 @vec_len(%struct.TYPE_31__* %21)
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %24

24:                                               ; preds = %217, %3
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %220

28:                                               ; preds = %24
  %29 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_31__*, %struct.TYPE_31__** %30, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call %struct.TYPE_31__* @vec_get(%struct.TYPE_31__* %31, i32 %32)
  store %struct.TYPE_31__* %33, %struct.TYPE_31__** %10, align 8
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %8, align 4
  %36 = sub nsw i32 %35, 1
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  br label %46

39:                                               ; preds = %28
  %40 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_31__*, %struct.TYPE_31__** %41, align 8
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 %43, 1
  %45 = call %struct.TYPE_31__* @vec_get(%struct.TYPE_31__* %42, i32 %44)
  br label %46

46:                                               ; preds = %39, %38
  %47 = phi %struct.TYPE_31__* [ null, %38 ], [ %45, %39 ]
  store %struct.TYPE_31__* %47, %struct.TYPE_31__** %11, align 8
  %48 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @TMACRO_PARAM, align 8
  %52 = icmp eq i64 %50, %51
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %12, align 4
  %54 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %55 = icmp ne %struct.TYPE_31__* %54, null
  br i1 %55, label %56, label %62

56:                                               ; preds = %46
  %57 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @TMACRO_PARAM, align 8
  %61 = icmp eq i64 %59, %60
  br label %62

62:                                               ; preds = %56, %46
  %63 = phi i1 [ false, %46 ], [ %61, %56 ]
  %64 = zext i1 %63 to i32
  store i32 %64, i32* %13, align 4
  %65 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %66 = call i64 @is_keyword(%struct.TYPE_31__* %65, i8 signext 35)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %83

68:                                               ; preds = %62
  %69 = load i32, i32* %13, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %83

71:                                               ; preds = %68
  %72 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %73 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %74 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %75 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call %struct.TYPE_31__* @vec_get(%struct.TYPE_31__* %74, i32 %77)
  %79 = call %struct.TYPE_31__* @stringize(%struct.TYPE_31__* %73, %struct.TYPE_31__* %78)
  %80 = call i32 @vec_push(%struct.TYPE_31__* %72, %struct.TYPE_31__* %79)
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %9, align 4
  br label %217

83:                                               ; preds = %68, %62
  %84 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %85 = load i8, i8* @KHASHHASH, align 1
  %86 = call i64 @is_keyword(%struct.TYPE_31__* %84, i8 signext %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %151

88:                                               ; preds = %83
  %89 = load i32, i32* %13, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %151

91:                                               ; preds = %88
  %92 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %93 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = call %struct.TYPE_31__* @vec_get(%struct.TYPE_31__* %92, i32 %95)
  store %struct.TYPE_31__* %96, %struct.TYPE_31__** %14, align 8
  %97 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %122

101:                                              ; preds = %91
  %102 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %103 = call i64 @vec_len(%struct.TYPE_31__* %102)
  %104 = icmp sgt i64 %103, 0
  br i1 %104, label %105, label %122

105:                                              ; preds = %101
  %106 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %107 = call %struct.TYPE_31__* @vec_tail(%struct.TYPE_31__* %106)
  %108 = call i64 @is_keyword(%struct.TYPE_31__* %107, i8 signext 44)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %122

110:                                              ; preds = %105
  %111 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %112 = call i64 @vec_len(%struct.TYPE_31__* %111)
  %113 = icmp sgt i64 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %110
  %115 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %116 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %117 = call i32 @vec_append(%struct.TYPE_31__* %115, %struct.TYPE_31__* %116)
  br label %121

118:                                              ; preds = %110
  %119 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %120 = call i32 @vec_pop(%struct.TYPE_31__* %119)
  br label %121

121:                                              ; preds = %118, %114
  br label %148

122:                                              ; preds = %105, %101, %91
  %123 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %124 = call i64 @vec_len(%struct.TYPE_31__* %123)
  %125 = icmp sgt i64 %124, 0
  br i1 %125, label %126, label %147

126:                                              ; preds = %122
  %127 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %128 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %129 = call %struct.TYPE_31__* @vec_head(%struct.TYPE_31__* %128)
  %130 = call i32 @glue_push(%struct.TYPE_31__* %127, %struct.TYPE_31__* %129)
  store i32 1, i32* %15, align 4
  br label %131

131:                                              ; preds = %143, %126
  %132 = load i32, i32* %15, align 4
  %133 = sext i32 %132 to i64
  %134 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %135 = call i64 @vec_len(%struct.TYPE_31__* %134)
  %136 = icmp slt i64 %133, %135
  br i1 %136, label %137, label %146

137:                                              ; preds = %131
  %138 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %139 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %140 = load i32, i32* %15, align 4
  %141 = call %struct.TYPE_31__* @vec_get(%struct.TYPE_31__* %139, i32 %140)
  %142 = call i32 @vec_push(%struct.TYPE_31__* %138, %struct.TYPE_31__* %141)
  br label %143

143:                                              ; preds = %137
  %144 = load i32, i32* %15, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %15, align 4
  br label %131

146:                                              ; preds = %131
  br label %147

147:                                              ; preds = %146, %122
  br label %148

148:                                              ; preds = %147, %121
  %149 = load i32, i32* %9, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %9, align 4
  br label %217

151:                                              ; preds = %88, %83
  %152 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %153 = load i8, i8* @KHASHHASH, align 1
  %154 = call i64 @is_keyword(%struct.TYPE_31__* %152, i8 signext %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %168

156:                                              ; preds = %151
  %157 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %158 = icmp ne %struct.TYPE_31__* %157, null
  br i1 %158, label %159, label %168

159:                                              ; preds = %156
  %160 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %161 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %160, i32 0, i32 2
  %162 = load i32*, i32** %161, align 8
  store i32* %162, i32** %6, align 8
  %163 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %164 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %165 = call i32 @glue_push(%struct.TYPE_31__* %163, %struct.TYPE_31__* %164)
  %166 = load i32, i32* %9, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %9, align 4
  br label %217

168:                                              ; preds = %156, %151
  %169 = load i32, i32* %12, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %199

171:                                              ; preds = %168
  %172 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %173 = icmp ne %struct.TYPE_31__* %172, null
  br i1 %173, label %174, label %199

174:                                              ; preds = %171
  %175 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %176 = load i8, i8* @KHASHHASH, align 1
  %177 = call i64 @is_keyword(%struct.TYPE_31__* %175, i8 signext %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %199

179:                                              ; preds = %174
  %180 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %181 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %180, i32 0, i32 2
  %182 = load i32*, i32** %181, align 8
  store i32* %182, i32** %6, align 8
  %183 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %184 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %185 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 8
  %187 = call %struct.TYPE_31__* @vec_get(%struct.TYPE_31__* %183, i32 %186)
  store %struct.TYPE_31__* %187, %struct.TYPE_31__** %16, align 8
  %188 = load %struct.TYPE_31__*, %struct.TYPE_31__** %16, align 8
  %189 = call i64 @vec_len(%struct.TYPE_31__* %188)
  %190 = icmp eq i64 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %179
  %192 = load i32, i32* %9, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %9, align 4
  br label %198

194:                                              ; preds = %179
  %195 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %196 = load %struct.TYPE_31__*, %struct.TYPE_31__** %16, align 8
  %197 = call i32 @vec_append(%struct.TYPE_31__* %195, %struct.TYPE_31__* %196)
  br label %198

198:                                              ; preds = %194, %191
  br label %217

199:                                              ; preds = %174, %171, %168
  %200 = load i32, i32* %12, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %213

202:                                              ; preds = %199
  %203 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %204 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %205 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 8
  %207 = call %struct.TYPE_31__* @vec_get(%struct.TYPE_31__* %203, i32 %206)
  store %struct.TYPE_31__* %207, %struct.TYPE_31__** %17, align 8
  %208 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %209 = load %struct.TYPE_31__*, %struct.TYPE_31__** %17, align 8
  %210 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %211 = call %struct.TYPE_31__* @expand_all(%struct.TYPE_31__* %209, %struct.TYPE_31__* %210)
  %212 = call i32 @vec_append(%struct.TYPE_31__* %208, %struct.TYPE_31__* %211)
  br label %217

213:                                              ; preds = %199
  %214 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %215 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %216 = call i32 @vec_push(%struct.TYPE_31__* %214, %struct.TYPE_31__* %215)
  br label %217

217:                                              ; preds = %213, %202, %198, %159, %148, %71
  %218 = load i32, i32* %9, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %9, align 4
  br label %24

220:                                              ; preds = %24
  %221 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %222 = load i32*, i32** %6, align 8
  %223 = call %struct.TYPE_31__* @add_hide_set(%struct.TYPE_31__* %221, i32* %222)
  ret %struct.TYPE_31__* %223
}

declare dso_local %struct.TYPE_31__* @make_vector(...) #1

declare dso_local i64 @vec_len(%struct.TYPE_31__*) #1

declare dso_local %struct.TYPE_31__* @vec_get(%struct.TYPE_31__*, i32) #1

declare dso_local i64 @is_keyword(%struct.TYPE_31__*, i8 signext) #1

declare dso_local i32 @vec_push(%struct.TYPE_31__*, %struct.TYPE_31__*) #1

declare dso_local %struct.TYPE_31__* @stringize(%struct.TYPE_31__*, %struct.TYPE_31__*) #1

declare dso_local %struct.TYPE_31__* @vec_tail(%struct.TYPE_31__*) #1

declare dso_local i32 @vec_append(%struct.TYPE_31__*, %struct.TYPE_31__*) #1

declare dso_local i32 @vec_pop(%struct.TYPE_31__*) #1

declare dso_local i32 @glue_push(%struct.TYPE_31__*, %struct.TYPE_31__*) #1

declare dso_local %struct.TYPE_31__* @vec_head(%struct.TYPE_31__*) #1

declare dso_local %struct.TYPE_31__* @expand_all(%struct.TYPE_31__*, %struct.TYPE_31__*) #1

declare dso_local %struct.TYPE_31__* @add_hide_set(%struct.TYPE_31__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
