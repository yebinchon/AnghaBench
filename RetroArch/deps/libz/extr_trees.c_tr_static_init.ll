; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libz/extr_trees.c_tr_static_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libz/extr_trees.c_tr_static_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32*, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i32*, %struct.TYPE_6__* }

@tr_static_init.static_init_done = internal global i32 0, align 4
@MAX_BITS = common dso_local global i32 0, align 4
@LENGTH_CODES = common dso_local global i32 0, align 4
@base_length = common dso_local global i32* null, align 8
@extra_lbits = common dso_local global i32* null, align 8
@_length_code = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [30 x i8] c"tr_static_init: length != 256\00", align 1
@base_dist = common dso_local global i32* null, align 8
@extra_dbits = common dso_local global i32* null, align 8
@_dist_code = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"tr_static_init: dist != 256\00", align 1
@D_CODES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"tr_static_init: 256+dist != 512\00", align 1
@static_ltree = common dso_local global %struct.TYPE_6__* null, align 8
@L_CODES = common dso_local global i64 0, align 8
@static_dtree = common dso_local global %struct.TYPE_8__* null, align 8
@extra_blbits = common dso_local global i32 0, align 4
@static_bl_desc = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@static_d_desc = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@static_l_desc = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @tr_static_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tr_static_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = load i32, i32* @MAX_BITS, align 4
  %10 = add nsw i32 %9, 1
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %6, align 8
  %13 = alloca i64, i64 %11, align 16
  store i64 %11, i64* %7, align 8
  %14 = load i32, i32* @tr_static_init.static_init_done, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %0
  store i32 1, i32* %8, align 4
  br label %245

17:                                               ; preds = %0
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %51, %17
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @LENGTH_CODES, align 4
  %21 = sub nsw i32 %20, 1
  %22 = icmp slt i32 %19, %21
  br i1 %22, label %23, label %54

23:                                               ; preds = %18
  %24 = load i32, i32* %3, align 4
  %25 = load i32*, i32** @base_length, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  store i32 %24, i32* %28, align 4
  store i32 0, i32* %1, align 4
  br label %29

29:                                               ; preds = %47, %23
  %30 = load i32, i32* %1, align 4
  %31 = load i32*, i32** @extra_lbits, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = shl i32 1, %35
  %37 = icmp slt i32 %30, %36
  br i1 %37, label %38, label %50

38:                                               ; preds = %29
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = inttoptr i64 %40 to i8*
  %42 = load i8**, i8*** @_length_code, align 8
  %43 = load i32, i32* %3, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %3, align 4
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i8*, i8** %42, i64 %45
  store i8* %41, i8** %46, align 8
  br label %47

47:                                               ; preds = %38
  %48 = load i32, i32* %1, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %1, align 4
  br label %29

50:                                               ; preds = %29
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %4, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %4, align 4
  br label %18

54:                                               ; preds = %18
  %55 = load i32, i32* %3, align 4
  %56 = icmp eq i32 %55, 256
  %57 = zext i1 %56 to i32
  %58 = call i32 @Assert(i32 %57, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %59 = load i32, i32* %4, align 4
  %60 = sext i32 %59 to i64
  %61 = inttoptr i64 %60 to i8*
  %62 = load i8**, i8*** @_length_code, align 8
  %63 = load i32, i32* %3, align 4
  %64 = sub nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8*, i8** %62, i64 %65
  store i8* %61, i8** %66, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %98, %54
  %68 = load i32, i32* %4, align 4
  %69 = icmp slt i32 %68, 16
  br i1 %69, label %70, label %101

70:                                               ; preds = %67
  %71 = load i32, i32* %5, align 4
  %72 = load i32*, i32** @base_dist, align 8
  %73 = load i32, i32* %4, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  store i32 %71, i32* %75, align 4
  store i32 0, i32* %1, align 4
  br label %76

76:                                               ; preds = %94, %70
  %77 = load i32, i32* %1, align 4
  %78 = load i32*, i32** @extra_dbits, align 8
  %79 = load i32, i32* %4, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = shl i32 1, %82
  %84 = icmp slt i32 %77, %83
  br i1 %84, label %85, label %97

85:                                               ; preds = %76
  %86 = load i32, i32* %4, align 4
  %87 = sext i32 %86 to i64
  %88 = inttoptr i64 %87 to i8*
  %89 = load i8**, i8*** @_dist_code, align 8
  %90 = load i32, i32* %5, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %5, align 4
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds i8*, i8** %89, i64 %92
  store i8* %88, i8** %93, align 8
  br label %94

94:                                               ; preds = %85
  %95 = load i32, i32* %1, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %1, align 4
  br label %76

97:                                               ; preds = %76
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %4, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %4, align 4
  br label %67

101:                                              ; preds = %67
  %102 = load i32, i32* %5, align 4
  %103 = icmp eq i32 %102, 256
  %104 = zext i1 %103 to i32
  %105 = call i32 @Assert(i32 %104, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %106 = load i32, i32* %5, align 4
  %107 = ashr i32 %106, 7
  store i32 %107, i32* %5, align 4
  br label %108

108:                                              ; preds = %143, %101
  %109 = load i32, i32* %4, align 4
  %110 = load i32, i32* @D_CODES, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %146

112:                                              ; preds = %108
  %113 = load i32, i32* %5, align 4
  %114 = shl i32 %113, 7
  %115 = load i32*, i32** @base_dist, align 8
  %116 = load i32, i32* %4, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  store i32 %114, i32* %118, align 4
  store i32 0, i32* %1, align 4
  br label %119

119:                                              ; preds = %139, %112
  %120 = load i32, i32* %1, align 4
  %121 = load i32*, i32** @extra_dbits, align 8
  %122 = load i32, i32* %4, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = sub nsw i32 %125, 7
  %127 = shl i32 1, %126
  %128 = icmp slt i32 %120, %127
  br i1 %128, label %129, label %142

129:                                              ; preds = %119
  %130 = load i32, i32* %4, align 4
  %131 = sext i32 %130 to i64
  %132 = inttoptr i64 %131 to i8*
  %133 = load i8**, i8*** @_dist_code, align 8
  %134 = load i32, i32* %5, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %5, align 4
  %136 = add nsw i32 256, %134
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8*, i8** %133, i64 %137
  store i8* %132, i8** %138, align 8
  br label %139

139:                                              ; preds = %129
  %140 = load i32, i32* %1, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %1, align 4
  br label %119

142:                                              ; preds = %119
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %4, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %4, align 4
  br label %108

146:                                              ; preds = %108
  %147 = load i32, i32* %5, align 4
  %148 = icmp eq i32 %147, 256
  %149 = zext i1 %148 to i32
  %150 = call i32 @Assert(i32 %149, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %151

151:                                              ; preds = %159, %146
  %152 = load i32, i32* %2, align 4
  %153 = load i32, i32* @MAX_BITS, align 4
  %154 = icmp sle i32 %152, %153
  br i1 %154, label %155, label %162

155:                                              ; preds = %151
  %156 = load i32, i32* %2, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i64, i64* %13, i64 %157
  store i64 0, i64* %158, align 8
  br label %159

159:                                              ; preds = %155
  %160 = load i32, i32* %2, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %2, align 4
  br label %151

162:                                              ; preds = %151
  store i32 0, i32* %1, align 4
  br label %163

163:                                              ; preds = %166, %162
  %164 = load i32, i32* %1, align 4
  %165 = icmp sle i32 %164, 143
  br i1 %165, label %166, label %176

166:                                              ; preds = %163
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** @static_ltree, align 8
  %168 = load i32, i32* %1, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %1, align 4
  %170 = sext i32 %168 to i64
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 0
  store i32 8, i32* %172, align 4
  %173 = getelementptr inbounds i64, i64* %13, i64 8
  %174 = load i64, i64* %173, align 16
  %175 = add nsw i64 %174, 1
  store i64 %175, i64* %173, align 16
  br label %163

176:                                              ; preds = %163
  br label %177

177:                                              ; preds = %180, %176
  %178 = load i32, i32* %1, align 4
  %179 = icmp sle i32 %178, 255
  br i1 %179, label %180, label %190

180:                                              ; preds = %177
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** @static_ltree, align 8
  %182 = load i32, i32* %1, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %1, align 4
  %184 = sext i32 %182 to i64
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 0
  store i32 9, i32* %186, align 4
  %187 = getelementptr inbounds i64, i64* %13, i64 9
  %188 = load i64, i64* %187, align 8
  %189 = add nsw i64 %188, 1
  store i64 %189, i64* %187, align 8
  br label %177

190:                                              ; preds = %177
  br label %191

191:                                              ; preds = %194, %190
  %192 = load i32, i32* %1, align 4
  %193 = icmp sle i32 %192, 279
  br i1 %193, label %194, label %204

194:                                              ; preds = %191
  %195 = load %struct.TYPE_6__*, %struct.TYPE_6__** @static_ltree, align 8
  %196 = load i32, i32* %1, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %1, align 4
  %198 = sext i32 %196 to i64
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 0
  store i32 7, i32* %200, align 4
  %201 = getelementptr inbounds i64, i64* %13, i64 7
  %202 = load i64, i64* %201, align 8
  %203 = add nsw i64 %202, 1
  store i64 %203, i64* %201, align 8
  br label %191

204:                                              ; preds = %191
  br label %205

205:                                              ; preds = %208, %204
  %206 = load i32, i32* %1, align 4
  %207 = icmp sle i32 %206, 287
  br i1 %207, label %208, label %218

208:                                              ; preds = %205
  %209 = load %struct.TYPE_6__*, %struct.TYPE_6__** @static_ltree, align 8
  %210 = load i32, i32* %1, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %1, align 4
  %212 = sext i32 %210 to i64
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 0
  store i32 8, i32* %214, align 4
  %215 = getelementptr inbounds i64, i64* %13, i64 8
  %216 = load i64, i64* %215, align 16
  %217 = add nsw i64 %216, 1
  store i64 %217, i64* %215, align 16
  br label %205

218:                                              ; preds = %205
  %219 = load %struct.TYPE_6__*, %struct.TYPE_6__** @static_ltree, align 8
  %220 = bitcast %struct.TYPE_6__* %219 to i32*
  %221 = load i64, i64* @L_CODES, align 8
  %222 = add nsw i64 %221, 1
  %223 = call i32 @gen_codes(i32* %220, i64 %222, i64* %13)
  store i32 0, i32* %1, align 4
  br label %224

224:                                              ; preds = %241, %218
  %225 = load i32, i32* %1, align 4
  %226 = load i32, i32* @D_CODES, align 4
  %227 = icmp slt i32 %225, %226
  br i1 %227, label %228, label %244

228:                                              ; preds = %224
  %229 = load %struct.TYPE_8__*, %struct.TYPE_8__** @static_dtree, align 8
  %230 = load i32, i32* %1, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %229, i64 %231
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %232, i32 0, i32 0
  store i32 5, i32* %233, align 4
  %234 = load i32, i32* %1, align 4
  %235 = call i32 @bi_reverse(i32 %234, i32 5)
  %236 = load %struct.TYPE_8__*, %struct.TYPE_8__** @static_dtree, align 8
  %237 = load i32, i32* %1, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %236, i64 %238
  %240 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %239, i32 0, i32 1
  store i32 %235, i32* %240, align 4
  br label %241

241:                                              ; preds = %228
  %242 = load i32, i32* %1, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %1, align 4
  br label %224

244:                                              ; preds = %224
  store i32 1, i32* @tr_static_init.static_init_done, align 4
  store i32 0, i32* %8, align 4
  br label %245

245:                                              ; preds = %244, %16
  %246 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %246)
  %247 = load i32, i32* %8, align 4
  switch i32 %247, label %249 [
    i32 0, label %248
    i32 1, label %248
  ]

248:                                              ; preds = %245, %245
  ret void

249:                                              ; preds = %245
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Assert(i32, i8*) #2

declare dso_local i32 @gen_codes(i32*, i64, i64*) #2

declare dso_local i32 @bi_reverse(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
