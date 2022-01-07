; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_sh2_dynarec.c_do_cc.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_sh2_dynarec.c_do_cc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@itype = common dso_local global i64* null, align 8
@RJUMP = common dso_local global i64 0, align 8
@ba = common dso_local global i32* null, align 8
@start = common dso_local global i32 0, align 4
@is_ds = common dso_local global i64* null, align 8
@ccadj = common dso_local global i32* null, align 8
@cycles = common dso_local global i32* null, align 8
@CJUMP = common dso_local global i64 0, align 8
@SJUMP = common dso_local global i64 0, align 8
@NODS = common dso_local global i32 0, align 4
@TAKEN = common dso_local global i32 0, align 4
@source = common dso_local global i64* null, align 8
@out = common dso_local global i64 0, align 8
@HOST_CCREG = common dso_local global i32 0, align 4
@CLOCK_DIVIDER = common dso_local global i32 0, align 4
@CC_STUB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_cc(i32 %0, i8* %1, i32* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %15, align 4
  %17 = load i64*, i64** @itype, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i64, i64* %17, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @RJUMP, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %6
  %25 = load i32*, i32** %9, align 8
  store i32 0, i32* %25, align 4
  br label %26

26:                                               ; preds = %24, %6
  %27 = load i32*, i32** @ba, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @internal_branch(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %71

34:                                               ; preds = %26
  %35 = load i32*, i32** @ba, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @start, align 4
  %41 = sub nsw i32 %39, %40
  %42 = ashr i32 %41, 1
  store i32 %42, i32* %16, align 4
  %43 = load i64*, i64** @is_ds, align 8
  %44 = load i32, i32* %16, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %63

49:                                               ; preds = %34
  %50 = load i32*, i32** @ccadj, align 8
  %51 = load i32, i32* %16, align 4
  %52 = add nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** @cycles, align 8
  %57 = load i32, i32* %16, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = sub nsw i32 %55, %60
  %62 = load i32*, i32** %9, align 8
  store i32 %61, i32* %62, align 4
  br label %70

63:                                               ; preds = %34
  %64 = load i32*, i32** @ccadj, align 8
  %65 = load i32, i32* %16, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** %9, align 8
  store i32 %68, i32* %69, align 4
  br label %70

70:                                               ; preds = %63, %49
  br label %73

71:                                               ; preds = %26
  %72 = load i32*, i32** %9, align 8
  store i32 0, i32* %72, align 4
  br label %73

73:                                               ; preds = %71, %70
  %74 = load i64*, i64** @itype, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %74, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @CJUMP, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %91

81:                                               ; preds = %73
  %82 = load i32*, i32** @cycles, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 2, %86
  %88 = load i32*, i32** %9, align 8
  %89 = load i32, i32* %88, align 4
  %90 = sub nsw i32 %89, %87
  store i32 %90, i32* %88, align 4
  br label %91

91:                                               ; preds = %81, %73
  %92 = load i64*, i64** @itype, align 8
  %93 = load i32, i32* %7, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i64, i64* %92, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @SJUMP, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %116

99:                                               ; preds = %91
  %100 = load i32*, i32** @cycles, align 8
  %101 = load i32, i32* %7, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 1, %104
  %106 = load i32*, i32** @cycles, align 8
  %107 = load i32, i32* %7, align 4
  %108 = add nsw i32 %107, 1
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %106, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %105, %111
  %113 = load i32*, i32** %9, align 8
  %114 = load i32, i32* %113, align 4
  %115 = sub nsw i32 %114, %112
  store i32 %115, i32* %113, align 4
  br label %116

116:                                              ; preds = %99, %91
  %117 = load i32*, i32** @ccadj, align 8
  %118 = load i32, i32* %7, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %11, align 4
  %123 = load i32, i32* @NODS, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %116
  br label %139

126:                                              ; preds = %116
  %127 = load i32*, i32** @cycles, align 8
  %128 = load i32, i32* %7, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = load i32*, i32** @cycles, align 8
  %133 = load i32, i32* %7, align 4
  %134 = add nsw i32 %133, 1
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %132, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = add nsw i32 %131, %137
  br label %139

139:                                              ; preds = %126, %125
  %140 = phi i32 [ 0, %125 ], [ %138, %126 ]
  %141 = add nsw i32 %121, %140
  store i32 %141, i32* %13, align 4
  %142 = load i32, i32* %11, align 4
  %143 = load i32, i32* @TAKEN, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %173

145:                                              ; preds = %139
  %146 = load i32, i32* %7, align 4
  %147 = load i32*, i32** @ba, align 8
  %148 = load i32, i32* %7, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @start, align 4
  %153 = sub nsw i32 %151, %152
  %154 = ashr i32 %153, 1
  %155 = icmp eq i32 %146, %154
  br i1 %155, label %156, label %173

156:                                              ; preds = %145
  %157 = load i64*, i64** @source, align 8
  %158 = load i32, i32* %7, align 4
  %159 = add nsw i32 %158, 1
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i64, i64* %157, i64 %160
  %162 = load i64, i64* %161, align 8
  %163 = icmp eq i64 %162, 0
  br i1 %163, label %164, label %173

164:                                              ; preds = %156
  %165 = load i64, i64* @out, align 8
  %166 = trunc i64 %165 to i32
  store i32 %166, i32* %15, align 4
  %167 = load i32, i32* @HOST_CCREG, align 4
  %168 = load i32, i32* @HOST_CCREG, align 4
  %169 = call i32 @emit_andimm(i32 %167, i32 3, i32 %168)
  %170 = load i64, i64* @out, align 8
  %171 = trunc i64 %170 to i32
  store i32 %171, i32* %14, align 4
  %172 = call i32 @emit_jmp(i32 0)
  br label %200

173:                                              ; preds = %156, %145, %139
  %174 = load i32*, i32** %9, align 8
  %175 = load i32, i32* %174, align 4
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %180, label %177

177:                                              ; preds = %173
  %178 = load i32, i32* %12, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %189

180:                                              ; preds = %177, %173
  %181 = load i32, i32* @CLOCK_DIVIDER, align 4
  %182 = load i32, i32* %13, align 4
  %183 = mul nsw i32 %181, %182
  %184 = load i32, i32* @HOST_CCREG, align 4
  %185 = call i32 @emit_addimm_and_set_flags(i32 %183, i32 %184)
  %186 = load i64, i64* @out, align 8
  %187 = trunc i64 %186 to i32
  store i32 %187, i32* %14, align 4
  %188 = call i32 @emit_jns(i32 0)
  br label %199

189:                                              ; preds = %177
  %190 = load i32, i32* @HOST_CCREG, align 4
  %191 = load i32, i32* @CLOCK_DIVIDER, align 4
  %192 = sub nsw i32 0, %191
  %193 = load i32, i32* %13, align 4
  %194 = mul nsw i32 %192, %193
  %195 = call i32 @emit_cmpimm(i32 %190, i32 %194)
  %196 = load i64, i64* @out, align 8
  %197 = trunc i64 %196 to i32
  store i32 %197, i32* %14, align 4
  %198 = call i32 @emit_jns(i32 0)
  br label %199

199:                                              ; preds = %189, %180
  br label %200

200:                                              ; preds = %199, %164
  %201 = load i32, i32* @CC_STUB, align 4
  %202 = load i32, i32* %14, align 4
  %203 = load i32, i32* %15, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %200
  %206 = load i32, i32* %15, align 4
  br label %210

207:                                              ; preds = %200
  %208 = load i64, i64* @out, align 8
  %209 = trunc i64 %208 to i32
  br label %210

210:                                              ; preds = %207, %205
  %211 = phi i32 [ %206, %205 ], [ %209, %207 ]
  %212 = load i32*, i32** %9, align 8
  %213 = load i32, i32* %212, align 4
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %221, label %215

215:                                              ; preds = %210
  %216 = load i32, i32* %12, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %221, label %218

218:                                              ; preds = %215
  %219 = load i32, i32* %15, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %222

221:                                              ; preds = %218, %215, %210
  br label %224

222:                                              ; preds = %218
  %223 = load i32, i32* %13, align 4
  br label %224

224:                                              ; preds = %222, %221
  %225 = phi i32 [ 0, %221 ], [ %223, %222 ]
  %226 = load i32, i32* %7, align 4
  %227 = load i32, i32* %10, align 4
  %228 = load i32, i32* %11, align 4
  %229 = call i32 @add_stub(i32 %201, i32 %202, i32 %211, i32 %225, i32 %226, i32 %227, i32 %228, i32 0)
  ret void
}

declare dso_local i64 @internal_branch(i32) #1

declare dso_local i32 @emit_andimm(i32, i32, i32) #1

declare dso_local i32 @emit_jmp(i32) #1

declare dso_local i32 @emit_addimm_and_set_flags(i32, i32) #1

declare dso_local i32 @emit_jns(i32) #1

declare dso_local i32 @emit_cmpimm(i32, i32) #1

declare dso_local i32 @add_stub(i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
