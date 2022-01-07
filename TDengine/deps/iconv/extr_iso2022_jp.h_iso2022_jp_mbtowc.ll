; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_iso2022_jp.h_iso2022_jp_mbtowc.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_iso2022_jp.h_iso2022_jp_mbtowc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@ESC = common dso_local global i8 0, align 1
@RET_ILSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*, i8*, i32)* @iso2022_jp_mbtowc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iso2022_jp_mbtowc(%struct.TYPE_6__* %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %19

19:                                               ; preds = %102, %72, %55, %4
  %20 = load i8*, i8** %8, align 8
  %21 = load i8, i8* %20, align 1
  store i8 %21, i8* %12, align 1
  %22 = load i8, i8* %12, align 1
  %23 = zext i8 %22 to i32
  %24 = load i8, i8* @ESC, align 1
  %25 = zext i8 %24 to i32
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %105

27:                                               ; preds = %19
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %11, align 4
  %30 = add nsw i32 %29, 3
  %31 = icmp slt i32 %28, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %199

33:                                               ; preds = %27
  %34 = load i8*, i8** %8, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 1
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp eq i32 %37, 40
  br i1 %38, label %39, label %74

39:                                               ; preds = %33
  %40 = load i8*, i8** %8, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 2
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = icmp eq i32 %43, 66
  br i1 %44, label %45, label %56

45:                                               ; preds = %39
  store i32 130, i32* %10, align 4
  %46 = load i8*, i8** %8, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 3
  store i8* %47, i8** %8, align 8
  %48 = load i32, i32* %11, align 4
  %49 = add nsw i32 %48, 3
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %11, align 4
  %52 = add nsw i32 %51, 1
  %53 = icmp slt i32 %50, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %45
  br label %199

55:                                               ; preds = %45
  br label %19

56:                                               ; preds = %39
  %57 = load i8*, i8** %8, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 2
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = icmp eq i32 %60, 74
  br i1 %61, label %62, label %73

62:                                               ; preds = %56
  store i32 129, i32* %10, align 4
  %63 = load i8*, i8** %8, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 3
  store i8* %64, i8** %8, align 8
  %65 = load i32, i32* %11, align 4
  %66 = add nsw i32 %65, 3
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %11, align 4
  %69 = add nsw i32 %68, 1
  %70 = icmp slt i32 %67, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %62
  br label %199

72:                                               ; preds = %62
  br label %19

73:                                               ; preds = %56
  br label %205

74:                                               ; preds = %33
  %75 = load i8*, i8** %8, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 1
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i32
  %79 = icmp eq i32 %78, 36
  br i1 %79, label %80, label %104

80:                                               ; preds = %74
  %81 = load i8*, i8** %8, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 2
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i32
  %85 = icmp eq i32 %84, 64
  br i1 %85, label %92, label %86

86:                                               ; preds = %80
  %87 = load i8*, i8** %8, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 2
  %89 = load i8, i8* %88, align 1
  %90 = zext i8 %89 to i32
  %91 = icmp eq i32 %90, 66
  br i1 %91, label %92, label %103

92:                                               ; preds = %86, %80
  store i32 128, i32* %10, align 4
  %93 = load i8*, i8** %8, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 3
  store i8* %94, i8** %8, align 8
  %95 = load i32, i32* %11, align 4
  %96 = add nsw i32 %95, 3
  store i32 %96, i32* %11, align 4
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* %11, align 4
  %99 = add nsw i32 %98, 1
  %100 = icmp slt i32 %97, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %92
  br label %199

102:                                              ; preds = %92
  br label %19

103:                                              ; preds = %86
  br label %205

104:                                              ; preds = %74
  br label %205

105:                                              ; preds = %19
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %10, align 4
  switch i32 %107, label %197 [
    i32 130, label %108
    i32 129, label %133
    i32 128, label %158
  ]

108:                                              ; preds = %106
  %109 = load i8, i8* %12, align 1
  %110 = zext i8 %109 to i32
  %111 = icmp slt i32 %110, 128
  br i1 %111, label %112, label %132

112:                                              ; preds = %108
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %114 = load i32*, i32** %7, align 8
  %115 = load i8*, i8** %8, align 8
  %116 = call i32 @ascii_mbtowc(%struct.TYPE_6__* %113, i32* %114, i8* %115, i32 1)
  store i32 %116, i32* %13, align 4
  %117 = load i32, i32* %13, align 4
  %118 = load i32, i32* @RET_ILSEQ, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %112
  br label %205

121:                                              ; preds = %112
  %122 = load i32, i32* %13, align 4
  %123 = icmp ne i32 %122, 1
  br i1 %123, label %124, label %126

124:                                              ; preds = %121
  %125 = call i32 (...) @abort() #3
  unreachable

126:                                              ; preds = %121
  %127 = load i32, i32* %10, align 4
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  store i32 %127, i32* %129, align 4
  %130 = load i32, i32* %11, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %5, align 4
  br label %211

132:                                              ; preds = %108
  br label %205

133:                                              ; preds = %106
  %134 = load i8, i8* %12, align 1
  %135 = zext i8 %134 to i32
  %136 = icmp slt i32 %135, 128
  br i1 %136, label %137, label %157

137:                                              ; preds = %133
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %139 = load i32*, i32** %7, align 8
  %140 = load i8*, i8** %8, align 8
  %141 = call i32 @jisx0201_mbtowc(%struct.TYPE_6__* %138, i32* %139, i8* %140, i32 1)
  store i32 %141, i32* %14, align 4
  %142 = load i32, i32* %14, align 4
  %143 = load i32, i32* @RET_ILSEQ, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %146

145:                                              ; preds = %137
  br label %205

146:                                              ; preds = %137
  %147 = load i32, i32* %14, align 4
  %148 = icmp ne i32 %147, 1
  br i1 %148, label %149, label %151

149:                                              ; preds = %146
  %150 = call i32 (...) @abort() #3
  unreachable

151:                                              ; preds = %146
  %152 = load i32, i32* %10, align 4
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  store i32 %152, i32* %154, align 4
  %155 = load i32, i32* %11, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %5, align 4
  br label %211

157:                                              ; preds = %133
  br label %205

158:                                              ; preds = %106
  %159 = load i32, i32* %9, align 4
  %160 = load i32, i32* %11, align 4
  %161 = add nsw i32 %160, 2
  %162 = icmp slt i32 %159, %161
  br i1 %162, label %163, label %164

163:                                              ; preds = %158
  br label %199

164:                                              ; preds = %158
  %165 = load i8*, i8** %8, align 8
  %166 = getelementptr inbounds i8, i8* %165, i64 0
  %167 = load i8, i8* %166, align 1
  %168 = zext i8 %167 to i32
  %169 = icmp slt i32 %168, 128
  br i1 %169, label %170, label %196

170:                                              ; preds = %164
  %171 = load i8*, i8** %8, align 8
  %172 = getelementptr inbounds i8, i8* %171, i64 1
  %173 = load i8, i8* %172, align 1
  %174 = zext i8 %173 to i32
  %175 = icmp slt i32 %174, 128
  br i1 %175, label %176, label %196

176:                                              ; preds = %170
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %178 = load i32*, i32** %7, align 8
  %179 = load i8*, i8** %8, align 8
  %180 = call i32 @jisx0208_mbtowc(%struct.TYPE_6__* %177, i32* %178, i8* %179, i32 2)
  store i32 %180, i32* %15, align 4
  %181 = load i32, i32* %15, align 4
  %182 = load i32, i32* @RET_ILSEQ, align 4
  %183 = icmp eq i32 %181, %182
  br i1 %183, label %184, label %185

184:                                              ; preds = %176
  br label %205

185:                                              ; preds = %176
  %186 = load i32, i32* %15, align 4
  %187 = icmp ne i32 %186, 2
  br i1 %187, label %188, label %190

188:                                              ; preds = %185
  %189 = call i32 (...) @abort() #3
  unreachable

190:                                              ; preds = %185
  %191 = load i32, i32* %10, align 4
  %192 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 0
  store i32 %191, i32* %193, align 4
  %194 = load i32, i32* %11, align 4
  %195 = add nsw i32 %194, 2
  store i32 %195, i32* %5, align 4
  br label %211

196:                                              ; preds = %170, %164
  br label %205

197:                                              ; preds = %106
  %198 = call i32 (...) @abort() #3
  unreachable

199:                                              ; preds = %163, %101, %71, %54, %32
  %200 = load i32, i32* %10, align 4
  %201 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 0
  store i32 %200, i32* %202, align 4
  %203 = load i32, i32* %11, align 4
  %204 = call i32 @RET_TOOFEW(i32 %203)
  store i32 %204, i32* %5, align 4
  br label %211

205:                                              ; preds = %196, %184, %157, %145, %132, %120, %104, %103, %73
  %206 = load i32, i32* %10, align 4
  %207 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 0
  store i32 %206, i32* %208, align 4
  %209 = load i32, i32* %11, align 4
  %210 = call i32 @RET_SHIFT_ILSEQ(i32 %209)
  store i32 %210, i32* %5, align 4
  br label %211

211:                                              ; preds = %205, %199, %190, %151, %126
  %212 = load i32, i32* %5, align 4
  ret i32 %212
}

declare dso_local i32 @ascii_mbtowc(%struct.TYPE_6__*, i32*, i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @jisx0201_mbtowc(%struct.TYPE_6__*, i32*, i8*, i32) #1

declare dso_local i32 @jisx0208_mbtowc(%struct.TYPE_6__*, i32*, i8*, i32) #1

declare dso_local i32 @RET_TOOFEW(i32) #1

declare dso_local i32 @RET_SHIFT_ILSEQ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
