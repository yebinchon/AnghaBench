; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/miniupnpc/extr_minixml.c_parseatt.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/miniupnpc/extr_minixml.c_parseatt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xmlparser = type { i8*, i8*, i32, i32 (i32, i8*, i32, i8*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xmlparser*)* @parseatt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parseatt(%struct.xmlparser* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xmlparser*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  store %struct.xmlparser* %0, %struct.xmlparser** %3, align 8
  br label %9

9:                                                ; preds = %234, %1
  %10 = load %struct.xmlparser*, %struct.xmlparser** %3, align 8
  %11 = getelementptr inbounds %struct.xmlparser, %struct.xmlparser* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = load %struct.xmlparser*, %struct.xmlparser** %3, align 8
  %14 = getelementptr inbounds %struct.xmlparser, %struct.xmlparser* %13, i32 0, i32 1
  %15 = load i8*, i8** %14, align 8
  %16 = icmp ult i8* %12, %15
  br i1 %16, label %17, label %239

17:                                               ; preds = %9
  %18 = load %struct.xmlparser*, %struct.xmlparser** %3, align 8
  %19 = getelementptr inbounds %struct.xmlparser, %struct.xmlparser* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 47
  br i1 %23, label %31, label %24

24:                                               ; preds = %17
  %25 = load %struct.xmlparser*, %struct.xmlparser** %3, align 8
  %26 = getelementptr inbounds %struct.xmlparser, %struct.xmlparser* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 62
  br i1 %30, label %31, label %32

31:                                               ; preds = %24, %17
  store i32 0, i32* %2, align 4
  br label %240

32:                                               ; preds = %24
  %33 = load %struct.xmlparser*, %struct.xmlparser** %3, align 8
  %34 = getelementptr inbounds %struct.xmlparser, %struct.xmlparser* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = load i8, i8* %35, align 1
  %37 = call i64 @IS_WHITE_SPACE(i8 signext %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %234, label %39

39:                                               ; preds = %32
  %40 = load %struct.xmlparser*, %struct.xmlparser** %3, align 8
  %41 = getelementptr inbounds %struct.xmlparser, %struct.xmlparser* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  store i8* %42, i8** %4, align 8
  store i32 0, i32* %5, align 4
  br label %43

43:                                               ; preds = %75, %39
  %44 = load %struct.xmlparser*, %struct.xmlparser** %3, align 8
  %45 = getelementptr inbounds %struct.xmlparser, %struct.xmlparser* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 61
  br i1 %49, label %50, label %58

50:                                               ; preds = %43
  %51 = load %struct.xmlparser*, %struct.xmlparser** %3, align 8
  %52 = getelementptr inbounds %struct.xmlparser, %struct.xmlparser* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = load i8, i8* %53, align 1
  %55 = call i64 @IS_WHITE_SPACE(i8 signext %54)
  %56 = icmp ne i64 %55, 0
  %57 = xor i1 %56, true
  br label %58

58:                                               ; preds = %50, %43
  %59 = phi i1 [ false, %43 ], [ %57, %50 ]
  br i1 %59, label %60, label %76

60:                                               ; preds = %58
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %5, align 4
  %63 = load %struct.xmlparser*, %struct.xmlparser** %3, align 8
  %64 = getelementptr inbounds %struct.xmlparser, %struct.xmlparser* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %64, align 8
  %67 = load %struct.xmlparser*, %struct.xmlparser** %3, align 8
  %68 = getelementptr inbounds %struct.xmlparser, %struct.xmlparser* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = load %struct.xmlparser*, %struct.xmlparser** %3, align 8
  %71 = getelementptr inbounds %struct.xmlparser, %struct.xmlparser* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = icmp uge i8* %69, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %60
  store i32 -1, i32* %2, align 4
  br label %240

75:                                               ; preds = %60
  br label %43

76:                                               ; preds = %58
  br label %77

77:                                               ; preds = %94, %76
  %78 = load %struct.xmlparser*, %struct.xmlparser** %3, align 8
  %79 = getelementptr inbounds %struct.xmlparser, %struct.xmlparser* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %79, align 8
  %82 = load i8, i8* %80, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp ne i32 %83, 61
  br i1 %84, label %85, label %95

85:                                               ; preds = %77
  %86 = load %struct.xmlparser*, %struct.xmlparser** %3, align 8
  %87 = getelementptr inbounds %struct.xmlparser, %struct.xmlparser* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = load %struct.xmlparser*, %struct.xmlparser** %3, align 8
  %90 = getelementptr inbounds %struct.xmlparser, %struct.xmlparser* %89, i32 0, i32 1
  %91 = load i8*, i8** %90, align 8
  %92 = icmp uge i8* %88, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %85
  store i32 -1, i32* %2, align 4
  br label %240

94:                                               ; preds = %85
  br label %77

95:                                               ; preds = %77
  br label %96

96:                                               ; preds = %116, %95
  %97 = load %struct.xmlparser*, %struct.xmlparser** %3, align 8
  %98 = getelementptr inbounds %struct.xmlparser, %struct.xmlparser* %97, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  %100 = load i8, i8* %99, align 1
  %101 = call i64 @IS_WHITE_SPACE(i8 signext %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %117

103:                                              ; preds = %96
  %104 = load %struct.xmlparser*, %struct.xmlparser** %3, align 8
  %105 = getelementptr inbounds %struct.xmlparser, %struct.xmlparser* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %107, i8** %105, align 8
  %108 = load %struct.xmlparser*, %struct.xmlparser** %3, align 8
  %109 = getelementptr inbounds %struct.xmlparser, %struct.xmlparser* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  %111 = load %struct.xmlparser*, %struct.xmlparser** %3, align 8
  %112 = getelementptr inbounds %struct.xmlparser, %struct.xmlparser* %111, i32 0, i32 1
  %113 = load i8*, i8** %112, align 8
  %114 = icmp uge i8* %110, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %103
  store i32 -1, i32* %2, align 4
  br label %240

116:                                              ; preds = %103
  br label %96

117:                                              ; preds = %96
  %118 = load %struct.xmlparser*, %struct.xmlparser** %3, align 8
  %119 = getelementptr inbounds %struct.xmlparser, %struct.xmlparser* %118, i32 0, i32 0
  %120 = load i8*, i8** %119, align 8
  %121 = load i8, i8* %120, align 1
  store i8 %121, i8* %8, align 1
  %122 = load i8, i8* %8, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp eq i32 %123, 39
  br i1 %124, label %129, label %125

125:                                              ; preds = %117
  %126 = load i8, i8* %8, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp eq i32 %127, 34
  br i1 %128, label %129, label %172

129:                                              ; preds = %125, %117
  %130 = load %struct.xmlparser*, %struct.xmlparser** %3, align 8
  %131 = getelementptr inbounds %struct.xmlparser, %struct.xmlparser* %130, i32 0, i32 0
  %132 = load i8*, i8** %131, align 8
  %133 = getelementptr inbounds i8, i8* %132, i32 1
  store i8* %133, i8** %131, align 8
  %134 = load %struct.xmlparser*, %struct.xmlparser** %3, align 8
  %135 = getelementptr inbounds %struct.xmlparser, %struct.xmlparser* %134, i32 0, i32 0
  %136 = load i8*, i8** %135, align 8
  %137 = load %struct.xmlparser*, %struct.xmlparser** %3, align 8
  %138 = getelementptr inbounds %struct.xmlparser, %struct.xmlparser* %137, i32 0, i32 1
  %139 = load i8*, i8** %138, align 8
  %140 = icmp uge i8* %136, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %129
  store i32 -1, i32* %2, align 4
  br label %240

142:                                              ; preds = %129
  %143 = load %struct.xmlparser*, %struct.xmlparser** %3, align 8
  %144 = getelementptr inbounds %struct.xmlparser, %struct.xmlparser* %143, i32 0, i32 0
  %145 = load i8*, i8** %144, align 8
  store i8* %145, i8** %6, align 8
  store i32 0, i32* %7, align 4
  br label %146

146:                                              ; preds = %170, %142
  %147 = load %struct.xmlparser*, %struct.xmlparser** %3, align 8
  %148 = getelementptr inbounds %struct.xmlparser, %struct.xmlparser* %147, i32 0, i32 0
  %149 = load i8*, i8** %148, align 8
  %150 = load i8, i8* %149, align 1
  %151 = sext i8 %150 to i32
  %152 = load i8, i8* %8, align 1
  %153 = sext i8 %152 to i32
  %154 = icmp ne i32 %151, %153
  br i1 %154, label %155, label %171

155:                                              ; preds = %146
  %156 = load i32, i32* %7, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %7, align 4
  %158 = load %struct.xmlparser*, %struct.xmlparser** %3, align 8
  %159 = getelementptr inbounds %struct.xmlparser, %struct.xmlparser* %158, i32 0, i32 0
  %160 = load i8*, i8** %159, align 8
  %161 = getelementptr inbounds i8, i8* %160, i32 1
  store i8* %161, i8** %159, align 8
  %162 = load %struct.xmlparser*, %struct.xmlparser** %3, align 8
  %163 = getelementptr inbounds %struct.xmlparser, %struct.xmlparser* %162, i32 0, i32 0
  %164 = load i8*, i8** %163, align 8
  %165 = load %struct.xmlparser*, %struct.xmlparser** %3, align 8
  %166 = getelementptr inbounds %struct.xmlparser, %struct.xmlparser* %165, i32 0, i32 1
  %167 = load i8*, i8** %166, align 8
  %168 = icmp uge i8* %164, %167
  br i1 %168, label %169, label %170

169:                                              ; preds = %155
  store i32 -1, i32* %2, align 4
  br label %240

170:                                              ; preds = %155
  br label %146

171:                                              ; preds = %146
  br label %216

172:                                              ; preds = %125
  %173 = load %struct.xmlparser*, %struct.xmlparser** %3, align 8
  %174 = getelementptr inbounds %struct.xmlparser, %struct.xmlparser* %173, i32 0, i32 0
  %175 = load i8*, i8** %174, align 8
  store i8* %175, i8** %6, align 8
  store i32 0, i32* %7, align 4
  br label %176

176:                                              ; preds = %214, %172
  %177 = load %struct.xmlparser*, %struct.xmlparser** %3, align 8
  %178 = getelementptr inbounds %struct.xmlparser, %struct.xmlparser* %177, i32 0, i32 0
  %179 = load i8*, i8** %178, align 8
  %180 = load i8, i8* %179, align 1
  %181 = call i64 @IS_WHITE_SPACE(i8 signext %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %197, label %183

183:                                              ; preds = %176
  %184 = load %struct.xmlparser*, %struct.xmlparser** %3, align 8
  %185 = getelementptr inbounds %struct.xmlparser, %struct.xmlparser* %184, i32 0, i32 0
  %186 = load i8*, i8** %185, align 8
  %187 = load i8, i8* %186, align 1
  %188 = sext i8 %187 to i32
  %189 = icmp ne i32 %188, 62
  br i1 %189, label %190, label %197

190:                                              ; preds = %183
  %191 = load %struct.xmlparser*, %struct.xmlparser** %3, align 8
  %192 = getelementptr inbounds %struct.xmlparser, %struct.xmlparser* %191, i32 0, i32 0
  %193 = load i8*, i8** %192, align 8
  %194 = load i8, i8* %193, align 1
  %195 = sext i8 %194 to i32
  %196 = icmp ne i32 %195, 47
  br label %197

197:                                              ; preds = %190, %183, %176
  %198 = phi i1 [ false, %183 ], [ false, %176 ], [ %196, %190 ]
  br i1 %198, label %199, label %215

199:                                              ; preds = %197
  %200 = load i32, i32* %7, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %7, align 4
  %202 = load %struct.xmlparser*, %struct.xmlparser** %3, align 8
  %203 = getelementptr inbounds %struct.xmlparser, %struct.xmlparser* %202, i32 0, i32 0
  %204 = load i8*, i8** %203, align 8
  %205 = getelementptr inbounds i8, i8* %204, i32 1
  store i8* %205, i8** %203, align 8
  %206 = load %struct.xmlparser*, %struct.xmlparser** %3, align 8
  %207 = getelementptr inbounds %struct.xmlparser, %struct.xmlparser* %206, i32 0, i32 0
  %208 = load i8*, i8** %207, align 8
  %209 = load %struct.xmlparser*, %struct.xmlparser** %3, align 8
  %210 = getelementptr inbounds %struct.xmlparser, %struct.xmlparser* %209, i32 0, i32 1
  %211 = load i8*, i8** %210, align 8
  %212 = icmp uge i8* %208, %211
  br i1 %212, label %213, label %214

213:                                              ; preds = %199
  store i32 -1, i32* %2, align 4
  br label %240

214:                                              ; preds = %199
  br label %176

215:                                              ; preds = %197
  br label %216

216:                                              ; preds = %215, %171
  %217 = load %struct.xmlparser*, %struct.xmlparser** %3, align 8
  %218 = getelementptr inbounds %struct.xmlparser, %struct.xmlparser* %217, i32 0, i32 3
  %219 = load i32 (i32, i8*, i32, i8*, i32)*, i32 (i32, i8*, i32, i8*, i32)** %218, align 8
  %220 = icmp ne i32 (i32, i8*, i32, i8*, i32)* %219, null
  br i1 %220, label %221, label %233

221:                                              ; preds = %216
  %222 = load %struct.xmlparser*, %struct.xmlparser** %3, align 8
  %223 = getelementptr inbounds %struct.xmlparser, %struct.xmlparser* %222, i32 0, i32 3
  %224 = load i32 (i32, i8*, i32, i8*, i32)*, i32 (i32, i8*, i32, i8*, i32)** %223, align 8
  %225 = load %struct.xmlparser*, %struct.xmlparser** %3, align 8
  %226 = getelementptr inbounds %struct.xmlparser, %struct.xmlparser* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 8
  %228 = load i8*, i8** %4, align 8
  %229 = load i32, i32* %5, align 4
  %230 = load i8*, i8** %6, align 8
  %231 = load i32, i32* %7, align 4
  %232 = call i32 %224(i32 %227, i8* %228, i32 %229, i8* %230, i32 %231)
  br label %233

233:                                              ; preds = %221, %216
  br label %234

234:                                              ; preds = %233, %32
  %235 = load %struct.xmlparser*, %struct.xmlparser** %3, align 8
  %236 = getelementptr inbounds %struct.xmlparser, %struct.xmlparser* %235, i32 0, i32 0
  %237 = load i8*, i8** %236, align 8
  %238 = getelementptr inbounds i8, i8* %237, i32 1
  store i8* %238, i8** %236, align 8
  br label %9

239:                                              ; preds = %9
  store i32 -1, i32* %2, align 4
  br label %240

240:                                              ; preds = %239, %213, %169, %141, %115, %93, %74, %31
  %241 = load i32, i32* %2, align 4
  ret i32 %241
}

declare dso_local i64 @IS_WHITE_SPACE(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
