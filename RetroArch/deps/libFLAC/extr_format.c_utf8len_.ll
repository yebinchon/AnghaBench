; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libFLAC/extr_format.c_utf8len_.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libFLAC/extr_format.c_utf8len_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @utf8len_ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @utf8len_(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load i32*, i32** %3, align 8
  %5 = icmp ne i32* null, %4
  %6 = zext i1 %5 to i32
  %7 = call i32 @FLAC__ASSERT(i32 %6)
  %8 = load i32*, i32** %3, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = load i32, i32* %9, align 4
  %11 = and i32 %10, 128
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %224

14:                                               ; preds = %1
  %15 = load i32*, i32** %3, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, 224
  %19 = icmp eq i32 %18, 192
  br i1 %19, label %20, label %34

20:                                               ; preds = %14
  %21 = load i32*, i32** %3, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, 192
  %25 = icmp eq i32 %24, 128
  br i1 %25, label %26, label %34

26:                                               ; preds = %20
  %27 = load i32*, i32** %3, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, 254
  %31 = icmp eq i32 %30, 192
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %224

33:                                               ; preds = %26
  store i32 2, i32* %2, align 4
  br label %224

34:                                               ; preds = %20, %14
  %35 = load i32*, i32** %3, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 240
  %39 = icmp eq i32 %38, 224
  br i1 %39, label %40, label %94

40:                                               ; preds = %34
  %41 = load i32*, i32** %3, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, 192
  %45 = icmp eq i32 %44, 128
  br i1 %45, label %46, label %94

46:                                               ; preds = %40
  %47 = load i32*, i32** %3, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 2
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, 192
  %51 = icmp eq i32 %50, 128
  br i1 %51, label %52, label %94

52:                                               ; preds = %46
  %53 = load i32*, i32** %3, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 224
  br i1 %56, label %57, label %64

57:                                               ; preds = %52
  %58 = load i32*, i32** %3, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, 224
  %62 = icmp eq i32 %61, 128
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  store i32 0, i32* %2, align 4
  br label %224

64:                                               ; preds = %57, %52
  %65 = load i32*, i32** %3, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, 237
  br i1 %68, label %69, label %76

69:                                               ; preds = %64
  %70 = load i32*, i32** %3, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, 224
  %74 = icmp eq i32 %73, 160
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  store i32 0, i32* %2, align 4
  br label %224

76:                                               ; preds = %69, %64
  %77 = load i32*, i32** %3, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %79, 239
  br i1 %80, label %81, label %93

81:                                               ; preds = %76
  %82 = load i32*, i32** %3, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %84, 191
  br i1 %85, label %86, label %93

86:                                               ; preds = %81
  %87 = load i32*, i32** %3, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 2
  %89 = load i32, i32* %88, align 4
  %90 = and i32 %89, 254
  %91 = icmp eq i32 %90, 190
  br i1 %91, label %92, label %93

92:                                               ; preds = %86
  store i32 0, i32* %2, align 4
  br label %224

93:                                               ; preds = %86, %81, %76
  store i32 3, i32* %2, align 4
  br label %224

94:                                               ; preds = %46, %40, %34
  %95 = load i32*, i32** %3, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  %97 = load i32, i32* %96, align 4
  %98 = and i32 %97, 248
  %99 = icmp eq i32 %98, 240
  br i1 %99, label %100, label %131

100:                                              ; preds = %94
  %101 = load i32*, i32** %3, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 1
  %103 = load i32, i32* %102, align 4
  %104 = and i32 %103, 192
  %105 = icmp eq i32 %104, 128
  br i1 %105, label %106, label %131

106:                                              ; preds = %100
  %107 = load i32*, i32** %3, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 2
  %109 = load i32, i32* %108, align 4
  %110 = and i32 %109, 192
  %111 = icmp eq i32 %110, 128
  br i1 %111, label %112, label %131

112:                                              ; preds = %106
  %113 = load i32*, i32** %3, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 3
  %115 = load i32, i32* %114, align 4
  %116 = and i32 %115, 192
  %117 = icmp eq i32 %116, 128
  br i1 %117, label %118, label %131

118:                                              ; preds = %112
  %119 = load i32*, i32** %3, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 0
  %121 = load i32, i32* %120, align 4
  %122 = icmp eq i32 %121, 240
  br i1 %122, label %123, label %130

123:                                              ; preds = %118
  %124 = load i32*, i32** %3, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 1
  %126 = load i32, i32* %125, align 4
  %127 = and i32 %126, 240
  %128 = icmp eq i32 %127, 128
  br i1 %128, label %129, label %130

129:                                              ; preds = %123
  store i32 0, i32* %2, align 4
  br label %224

130:                                              ; preds = %123, %118
  store i32 4, i32* %2, align 4
  br label %224

131:                                              ; preds = %112, %106, %100, %94
  %132 = load i32*, i32** %3, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 0
  %134 = load i32, i32* %133, align 4
  %135 = and i32 %134, 252
  %136 = icmp eq i32 %135, 248
  br i1 %136, label %137, label %174

137:                                              ; preds = %131
  %138 = load i32*, i32** %3, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 1
  %140 = load i32, i32* %139, align 4
  %141 = and i32 %140, 192
  %142 = icmp eq i32 %141, 128
  br i1 %142, label %143, label %174

143:                                              ; preds = %137
  %144 = load i32*, i32** %3, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 2
  %146 = load i32, i32* %145, align 4
  %147 = and i32 %146, 192
  %148 = icmp eq i32 %147, 128
  br i1 %148, label %149, label %174

149:                                              ; preds = %143
  %150 = load i32*, i32** %3, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 3
  %152 = load i32, i32* %151, align 4
  %153 = and i32 %152, 192
  %154 = icmp eq i32 %153, 128
  br i1 %154, label %155, label %174

155:                                              ; preds = %149
  %156 = load i32*, i32** %3, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 4
  %158 = load i32, i32* %157, align 4
  %159 = and i32 %158, 192
  %160 = icmp eq i32 %159, 128
  br i1 %160, label %161, label %174

161:                                              ; preds = %155
  %162 = load i32*, i32** %3, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 0
  %164 = load i32, i32* %163, align 4
  %165 = icmp eq i32 %164, 248
  br i1 %165, label %166, label %173

166:                                              ; preds = %161
  %167 = load i32*, i32** %3, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 1
  %169 = load i32, i32* %168, align 4
  %170 = and i32 %169, 248
  %171 = icmp eq i32 %170, 128
  br i1 %171, label %172, label %173

172:                                              ; preds = %166
  store i32 0, i32* %2, align 4
  br label %224

173:                                              ; preds = %166, %161
  store i32 5, i32* %2, align 4
  br label %224

174:                                              ; preds = %155, %149, %143, %137, %131
  %175 = load i32*, i32** %3, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 0
  %177 = load i32, i32* %176, align 4
  %178 = and i32 %177, 254
  %179 = icmp eq i32 %178, 252
  br i1 %179, label %180, label %223

180:                                              ; preds = %174
  %181 = load i32*, i32** %3, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 1
  %183 = load i32, i32* %182, align 4
  %184 = and i32 %183, 192
  %185 = icmp eq i32 %184, 128
  br i1 %185, label %186, label %223

186:                                              ; preds = %180
  %187 = load i32*, i32** %3, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 2
  %189 = load i32, i32* %188, align 4
  %190 = and i32 %189, 192
  %191 = icmp eq i32 %190, 128
  br i1 %191, label %192, label %223

192:                                              ; preds = %186
  %193 = load i32*, i32** %3, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 3
  %195 = load i32, i32* %194, align 4
  %196 = and i32 %195, 192
  %197 = icmp eq i32 %196, 128
  br i1 %197, label %198, label %223

198:                                              ; preds = %192
  %199 = load i32*, i32** %3, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 4
  %201 = load i32, i32* %200, align 4
  %202 = and i32 %201, 192
  %203 = icmp eq i32 %202, 128
  br i1 %203, label %204, label %223

204:                                              ; preds = %198
  %205 = load i32*, i32** %3, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 5
  %207 = load i32, i32* %206, align 4
  %208 = and i32 %207, 192
  %209 = icmp eq i32 %208, 128
  br i1 %209, label %210, label %223

210:                                              ; preds = %204
  %211 = load i32*, i32** %3, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 0
  %213 = load i32, i32* %212, align 4
  %214 = icmp eq i32 %213, 252
  br i1 %214, label %215, label %222

215:                                              ; preds = %210
  %216 = load i32*, i32** %3, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 1
  %218 = load i32, i32* %217, align 4
  %219 = and i32 %218, 252
  %220 = icmp eq i32 %219, 128
  br i1 %220, label %221, label %222

221:                                              ; preds = %215
  store i32 0, i32* %2, align 4
  br label %224

222:                                              ; preds = %215, %210
  store i32 6, i32* %2, align 4
  br label %224

223:                                              ; preds = %204, %198, %192, %186, %180, %174
  store i32 0, i32* %2, align 4
  br label %224

224:                                              ; preds = %223, %222, %221, %173, %172, %130, %129, %93, %92, %75, %63, %33, %32, %13
  %225 = load i32, i32* %2, align 4
  ret i32 %225
}

declare dso_local i32 @FLAC__ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
