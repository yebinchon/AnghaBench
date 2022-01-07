; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_sh2iasm.c_parse_at.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_sh2iasm.c_parse_at.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"Cant find arg\00", align 1
@A_REG_N = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Invalid reg after @-\00", align 1
@A_DEC_N = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"Must be @(R0,...)\00", align 1
@A_GBR = common dso_local global i32 0, align 4
@A_R0_GBR = common dso_local global i32 0, align 4
@A_IND_R0_REG_N = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Syntax error in @(R0,...)\00", align 1
@A_DISP_REG_N = common dso_local global i32 0, align 4
@A_DISP_GBR = common dso_local global i32 0, align 4
@A_DISP_PC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"Bad syntax in @(disp,[Rn,GBR,PC])\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"Expected a )\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"Invalid register after @\00", align 1
@A_INC_N = common dso_local global i32 0, align 4
@A_IND_N = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_at(i8* %0, %struct.TYPE_3__* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %215

16:                                               ; preds = %3
  %17 = load i8*, i8** %5, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 45
  br i1 %20, label %21, label %45

21:                                               ; preds = %16
  %22 = load i8*, i8** %5, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %5, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = call i32 @parse_reg(i8* %24, i32* %8, i32* %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %21
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @asm_bad(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %31)
  store i32 0, i32* %4, align 4
  br label %215

33:                                               ; preds = %21
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @A_REG_N, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i8*, i8** %7, align 8
  %39 = call i32 @asm_bad(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %38)
  store i32 0, i32* %4, align 4
  br label %215

40:                                               ; preds = %33
  %41 = load i32, i32* @A_DEC_N, align 4
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %40
  br label %214

45:                                               ; preds = %16
  %46 = load i8*, i8** %5, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 40
  br i1 %49, label %50, label %184

50:                                               ; preds = %45
  %51 = load i8*, i8** %5, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %5, align 8
  %53 = load i8*, i8** %5, align 8
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = call i32 @parse_reg(i8* %53, i32* %8, i32* %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %113

59:                                               ; preds = %50
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @A_REG_N, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %113

63:                                               ; preds = %59
  %64 = load i32, i32* %9, align 4
  %65 = load i8*, i8** %5, align 8
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds i8, i8* %65, i64 %66
  store i8* %67, i8** %5, align 8
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %63
  %73 = load i8*, i8** %7, align 8
  %74 = call i32 @asm_bad(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %73)
  store i32 0, i32* %4, align 4
  br label %215

75:                                               ; preds = %63
  %76 = load i8*, i8** %5, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 0
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 44
  br i1 %80, label %81, label %84

81:                                               ; preds = %75
  %82 = load i8*, i8** %5, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %5, align 8
  br label %84

84:                                               ; preds = %81, %75
  %85 = load i8*, i8** %5, align 8
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  %88 = call i32 @parse_reg(i8* %85, i32* %8, i32* %87)
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %9, align 4
  %90 = load i8*, i8** %5, align 8
  %91 = sext i32 %89 to i64
  %92 = getelementptr inbounds i8, i8* %90, i64 %91
  store i8* %92, i8** %5, align 8
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* @A_GBR, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %84
  %97 = load i32, i32* @A_R0_GBR, align 4
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 4
  br label %112

100:                                              ; preds = %84
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* @A_REG_N, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %100
  %105 = load i32, i32* @A_IND_R0_REG_N, align 4
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 4
  br label %111

108:                                              ; preds = %100
  %109 = load i8*, i8** %7, align 8
  %110 = call i32 @asm_bad(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* %109)
  store i32 0, i32* %4, align 4
  br label %215

111:                                              ; preds = %104
  br label %112

112:                                              ; preds = %111, %96
  br label %175

113:                                              ; preds = %59, %50
  br label %114

114:                                              ; preds = %127, %113
  %115 = load i8*, i8** %5, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 -1
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp ne i32 %118, 44
  br i1 %119, label %120, label %125

120:                                              ; preds = %114
  %121 = load i8*, i8** %5, align 8
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp ne i32 %123, 0
  br label %125

125:                                              ; preds = %120, %114
  %126 = phi i1 [ false, %114 ], [ %124, %120 ]
  br i1 %126, label %127, label %130

127:                                              ; preds = %125
  %128 = load i8*, i8** %5, align 8
  %129 = getelementptr inbounds i8, i8* %128, i32 1
  store i8* %129, i8** %5, align 8
  br label %114

130:                                              ; preds = %125
  %131 = load i8*, i8** %5, align 8
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 1
  %134 = call i32 @parse_reg(i8* %131, i32* %8, i32* %133)
  store i32 %134, i32* %9, align 4
  %135 = load i32, i32* %9, align 4
  %136 = load i8*, i8** %5, align 8
  %137 = sext i32 %135 to i64
  %138 = getelementptr inbounds i8, i8* %136, i64 %137
  store i8* %138, i8** %5, align 8
  %139 = load i32, i32* %9, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %171

141:                                              ; preds = %130
  %142 = load i32, i32* %8, align 4
  %143 = load i32, i32* @A_REG_N, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %149

145:                                              ; preds = %141
  %146 = load i32, i32* @A_DISP_REG_N, align 4
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 0
  store i32 %146, i32* %148, align 4
  br label %170

149:                                              ; preds = %141
  %150 = load i32, i32* %8, align 4
  %151 = load i32, i32* @A_GBR, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %157

153:                                              ; preds = %149
  %154 = load i32, i32* @A_DISP_GBR, align 4
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 0
  store i32 %154, i32* %156, align 4
  br label %169

157:                                              ; preds = %149
  %158 = load i32, i32* %8, align 4
  %159 = load i32, i32* @A_DISP_PC, align 4
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %161, label %165

161:                                              ; preds = %157
  %162 = load i32, i32* @A_DISP_PC, align 4
  %163 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 0
  store i32 %162, i32* %164, align 4
  br label %168

165:                                              ; preds = %157
  %166 = load i8*, i8** %7, align 8
  %167 = call i32 @asm_bad(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i8* %166)
  store i32 0, i32* %4, align 4
  br label %215

168:                                              ; preds = %161
  br label %169

169:                                              ; preds = %168, %153
  br label %170

170:                                              ; preds = %169, %145
  br label %174

171:                                              ; preds = %130
  %172 = load i8*, i8** %7, align 8
  %173 = call i32 @asm_bad(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i8* %172)
  store i32 0, i32* %4, align 4
  br label %215

174:                                              ; preds = %170
  br label %175

175:                                              ; preds = %174, %112
  %176 = load i8*, i8** %5, align 8
  %177 = load i8, i8* %176, align 1
  %178 = sext i8 %177 to i32
  %179 = icmp ne i32 %178, 41
  br i1 %179, label %180, label %183

180:                                              ; preds = %175
  %181 = load i8*, i8** %7, align 8
  %182 = call i32 @asm_bad(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* %181)
  store i32 0, i32* %4, align 4
  br label %215

183:                                              ; preds = %175
  br label %213

184:                                              ; preds = %45
  %185 = load i8*, i8** %5, align 8
  %186 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 1
  %188 = call i32 @parse_reg(i8* %185, i32* %8, i32* %187)
  %189 = load i8*, i8** %5, align 8
  %190 = sext i32 %188 to i64
  %191 = getelementptr inbounds i8, i8* %189, i64 %190
  store i8* %191, i8** %5, align 8
  %192 = load i32, i32* %8, align 4
  %193 = load i32, i32* @A_REG_N, align 4
  %194 = icmp ne i32 %192, %193
  br i1 %194, label %195, label %198

195:                                              ; preds = %184
  %196 = load i8*, i8** %7, align 8
  %197 = call i32 @asm_bad(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i8* %196)
  store i32 0, i32* %4, align 4
  br label %215

198:                                              ; preds = %184
  %199 = load i8*, i8** %5, align 8
  %200 = getelementptr inbounds i8, i8* %199, i64 0
  %201 = load i8, i8* %200, align 1
  %202 = sext i8 %201 to i32
  %203 = icmp eq i32 %202, 43
  br i1 %203, label %204, label %208

204:                                              ; preds = %198
  %205 = load i32, i32* @A_INC_N, align 4
  %206 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %207 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %206, i32 0, i32 0
  store i32 %205, i32* %207, align 4
  br label %212

208:                                              ; preds = %198
  %209 = load i32, i32* @A_IND_N, align 4
  %210 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %211 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %210, i32 0, i32 0
  store i32 %209, i32* %211, align 4
  br label %212

212:                                              ; preds = %208, %204
  br label %213

213:                                              ; preds = %212, %183
  br label %214

214:                                              ; preds = %213, %44
  store i32 1, i32* %4, align 4
  br label %215

215:                                              ; preds = %214, %195, %180, %171, %165, %108, %72, %37, %30, %15
  %216 = load i32, i32* %4, align 4
  ret i32 %216
}

declare dso_local i32 @parse_reg(i8*, i32*, i32*) #1

declare dso_local i32 @asm_bad(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
