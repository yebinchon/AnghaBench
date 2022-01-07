; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_big5hkscs2001.h_big5hkscs2001_wctomb.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_big5hkscs2001.h_big5hkscs2001_wctomb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8 }

@RET_TOOSMALL = common dso_local global i32 0, align 4
@RET_ILUNI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8*, i32, i32)* @big5hkscs2001_wctomb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @big5hkscs2001_wctomb(%struct.TYPE_6__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca [2 x i8], align 1
  %13 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i8, i8* %15, align 1
  store i8 %16, i8* %11, align 1
  %17 = load i8, i8* %11, align 1
  %18 = icmp ne i8 %17, 0
  br i1 %18, label %19, label %58

19:                                               ; preds = %4
  %20 = load i32, i32* %8, align 4
  %21 = icmp eq i32 %20, 772
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %8, align 4
  %24 = icmp eq i32 %23, 780
  br i1 %24, label %25, label %45

25:                                               ; preds = %22, %19
  %26 = load i32, i32* %9, align 4
  %27 = icmp sge i32 %26, 2
  br i1 %27, label %28, label %43

28:                                               ; preds = %25
  %29 = load i8*, i8** %7, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  store i8 -120, i8* %30, align 1
  %31 = load i8, i8* %11, align 1
  %32 = zext i8 %31 to i32
  %33 = load i32, i32* %8, align 4
  %34 = and i32 %33, 24
  %35 = ashr i32 %34, 2
  %36 = add nsw i32 %32, %35
  %37 = sub nsw i32 %36, 4
  %38 = trunc i32 %37 to i8
  %39 = load i8*, i8** %7, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  store i8 %38, i8* %40, align 1
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  store i8 0, i8* %42, align 1
  store i32 2, i32* %5, align 4
  br label %221

43:                                               ; preds = %25
  %44 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %44, i32* %5, align 4
  br label %221

45:                                               ; preds = %22
  %46 = load i32, i32* %9, align 4
  %47 = icmp slt i32 %46, 2
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %49, i32* %5, align 4
  br label %221

50:                                               ; preds = %45
  %51 = load i8*, i8** %7, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 0
  store i8 -120, i8* %52, align 1
  %53 = load i8, i8* %11, align 1
  %54 = load i8*, i8** %7, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 1
  store i8 %53, i8* %55, align 1
  %56 = load i8*, i8** %7, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 2
  store i8* %57, i8** %7, align 8
  store i32 2, i32* %10, align 4
  br label %58

58:                                               ; preds = %50, %4
  %59 = load i32, i32* %8, align 4
  %60 = icmp slt i32 %59, 128
  br i1 %60, label %61, label %76

61:                                               ; preds = %58
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp sgt i32 %62, %63
  br i1 %64, label %65, label %74

65:                                               ; preds = %61
  %66 = load i32, i32* %8, align 4
  %67 = trunc i32 %66 to i8
  %68 = load i8*, i8** %7, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 0
  store i8 %67, i8* %69, align 1
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  store i8 0, i8* %71, align 1
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %5, align 4
  br label %221

74:                                               ; preds = %61
  %75 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %75, i32* %5, align 4
  br label %221

76:                                               ; preds = %58
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %78 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @big5_wctomb(%struct.TYPE_6__* %77, i8* %78, i32 %79, i32 2)
  store i32 %80, i32* %13, align 4
  %81 = load i32, i32* %13, align 4
  %82 = load i32, i32* @RET_ILUNI, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %125

84:                                               ; preds = %76
  %85 = load i32, i32* %13, align 4
  %86 = icmp ne i32 %85, 2
  br i1 %86, label %87, label %89

87:                                               ; preds = %84
  %88 = call i32 (...) @abort() #3
  unreachable

89:                                               ; preds = %84
  %90 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %91 = load i8, i8* %90, align 1
  %92 = zext i8 %91 to i32
  %93 = icmp eq i32 %92, 198
  br i1 %93, label %94, label %99

94:                                               ; preds = %89
  %95 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 1
  %96 = load i8, i8* %95, align 1
  %97 = zext i8 %96 to i32
  %98 = icmp sge i32 %97, 161
  br i1 %98, label %124, label %99

99:                                               ; preds = %94, %89
  %100 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i32
  %103 = icmp eq i32 %102, 199
  br i1 %103, label %124, label %104

104:                                              ; preds = %99
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* %10, align 4
  %107 = add nsw i32 %106, 2
  %108 = icmp sge i32 %105, %107
  br i1 %108, label %109, label %122

109:                                              ; preds = %104
  %110 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %111 = load i8, i8* %110, align 1
  %112 = load i8*, i8** %7, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 0
  store i8 %111, i8* %113, align 1
  %114 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 1
  %115 = load i8, i8* %114, align 1
  %116 = load i8*, i8** %7, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 1
  store i8 %115, i8* %117, align 1
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  store i8 0, i8* %119, align 1
  %120 = load i32, i32* %10, align 4
  %121 = add nsw i32 %120, 2
  store i32 %121, i32* %5, align 4
  br label %221

122:                                              ; preds = %104
  %123 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %123, i32* %5, align 4
  br label %221

124:                                              ; preds = %99, %94
  br label %125

125:                                              ; preds = %124, %76
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %127 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %128 = load i32, i32* %8, align 4
  %129 = call i32 @hkscs1999_wctomb(%struct.TYPE_6__* %126, i8* %127, i32 %128, i32 2)
  store i32 %129, i32* %13, align 4
  %130 = load i32, i32* %13, align 4
  %131 = load i32, i32* @RET_ILUNI, align 4
  %132 = icmp ne i32 %130, %131
  br i1 %132, label %133, label %186

133:                                              ; preds = %125
  %134 = load i32, i32* %13, align 4
  %135 = icmp ne i32 %134, 2
  br i1 %135, label %136, label %138

136:                                              ; preds = %133
  %137 = call i32 (...) @abort() #3
  unreachable

138:                                              ; preds = %133
  %139 = load i32, i32* %8, align 4
  %140 = and i32 %139, -33
  %141 = icmp eq i32 %140, 202
  br i1 %141, label %142, label %166

142:                                              ; preds = %138
  %143 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %144 = load i8, i8* %143, align 1
  %145 = zext i8 %144 to i32
  %146 = icmp eq i32 %145, 136
  br i1 %146, label %147, label %157

147:                                              ; preds = %142
  %148 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 1
  %149 = load i8, i8* %148, align 1
  %150 = zext i8 %149 to i32
  %151 = icmp eq i32 %150, 102
  br i1 %151, label %159, label %152

152:                                              ; preds = %147
  %153 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 1
  %154 = load i8, i8* %153, align 1
  %155 = zext i8 %154 to i32
  %156 = icmp eq i32 %155, 167
  br i1 %156, label %159, label %157

157:                                              ; preds = %152, %142
  %158 = call i32 (...) @abort() #3
  unreachable

159:                                              ; preds = %152, %147
  %160 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 1
  %161 = load i8, i8* %160, align 1
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 0
  store i8 %161, i8* %163, align 1
  %164 = load i32, i32* %10, align 4
  %165 = add nsw i32 %164, 0
  store i32 %165, i32* %5, align 4
  br label %221

166:                                              ; preds = %138
  %167 = load i32, i32* %9, align 4
  %168 = load i32, i32* %10, align 4
  %169 = add nsw i32 %168, 2
  %170 = icmp sge i32 %167, %169
  br i1 %170, label %171, label %184

171:                                              ; preds = %166
  %172 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %173 = load i8, i8* %172, align 1
  %174 = load i8*, i8** %7, align 8
  %175 = getelementptr inbounds i8, i8* %174, i64 0
  store i8 %173, i8* %175, align 1
  %176 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 1
  %177 = load i8, i8* %176, align 1
  %178 = load i8*, i8** %7, align 8
  %179 = getelementptr inbounds i8, i8* %178, i64 1
  store i8 %177, i8* %179, align 1
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 0
  store i8 0, i8* %181, align 1
  %182 = load i32, i32* %10, align 4
  %183 = add nsw i32 %182, 2
  store i32 %183, i32* %5, align 4
  br label %221

184:                                              ; preds = %166
  %185 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %185, i32* %5, align 4
  br label %221

186:                                              ; preds = %125
  %187 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %188 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %189 = load i32, i32* %8, align 4
  %190 = call i32 @hkscs2001_wctomb(%struct.TYPE_6__* %187, i8* %188, i32 %189, i32 2)
  store i32 %190, i32* %13, align 4
  %191 = load i32, i32* %13, align 4
  %192 = load i32, i32* @RET_ILUNI, align 4
  %193 = icmp ne i32 %191, %192
  br i1 %193, label %194, label %219

194:                                              ; preds = %186
  %195 = load i32, i32* %13, align 4
  %196 = icmp ne i32 %195, 2
  br i1 %196, label %197, label %199

197:                                              ; preds = %194
  %198 = call i32 (...) @abort() #3
  unreachable

199:                                              ; preds = %194
  %200 = load i32, i32* %9, align 4
  %201 = load i32, i32* %10, align 4
  %202 = add nsw i32 %201, 2
  %203 = icmp sge i32 %200, %202
  br i1 %203, label %204, label %217

204:                                              ; preds = %199
  %205 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %206 = load i8, i8* %205, align 1
  %207 = load i8*, i8** %7, align 8
  %208 = getelementptr inbounds i8, i8* %207, i64 0
  store i8 %206, i8* %208, align 1
  %209 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 1
  %210 = load i8, i8* %209, align 1
  %211 = load i8*, i8** %7, align 8
  %212 = getelementptr inbounds i8, i8* %211, i64 1
  store i8 %210, i8* %212, align 1
  %213 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 0
  store i8 0, i8* %214, align 1
  %215 = load i32, i32* %10, align 4
  %216 = add nsw i32 %215, 2
  store i32 %216, i32* %5, align 4
  br label %221

217:                                              ; preds = %199
  %218 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %218, i32* %5, align 4
  br label %221

219:                                              ; preds = %186
  %220 = load i32, i32* @RET_ILUNI, align 4
  store i32 %220, i32* %5, align 4
  br label %221

221:                                              ; preds = %219, %217, %204, %184, %171, %159, %122, %109, %74, %65, %48, %43, %28
  %222 = load i32, i32* %5, align 4
  ret i32 %222
}

declare dso_local i32 @big5_wctomb(%struct.TYPE_6__*, i8*, i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @hkscs1999_wctomb(%struct.TYPE_6__*, i8*, i32, i32) #1

declare dso_local i32 @hkscs2001_wctomb(%struct.TYPE_6__*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
