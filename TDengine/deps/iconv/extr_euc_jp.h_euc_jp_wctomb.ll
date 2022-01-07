; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_euc_jp.h_euc_jp_wctomb.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_euc_jp.h_euc_jp_wctomb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RET_ILUNI = common dso_local global i32 0, align 4
@RET_TOOSMALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32)* @euc_jp_wctomb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @euc_jp_wctomb(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [2 x i8], align 1
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i8*, i8** %7, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @ascii_wctomb(i32 %16, i8* %17, i32 %18, i32 %19)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* @RET_ILUNI, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32, i32* %11, align 4
  store i32 %25, i32* %5, align 4
  br label %201

26:                                               ; preds = %4
  %27 = load i32, i32* %6, align 4
  %28 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @jisx0208_wctomb(i32 %27, i8* %28, i32 %29, i32 2)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* @RET_ILUNI, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %59

34:                                               ; preds = %26
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 2
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = call i32 (...) @abort() #3
  unreachable

39:                                               ; preds = %34
  %40 = load i32, i32* %9, align 4
  %41 = icmp slt i32 %40, 2
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %43, i32* %5, align 4
  br label %201

44:                                               ; preds = %39
  %45 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = add nsw i32 %47, 128
  %49 = trunc i32 %48 to i8
  %50 = load i8*, i8** %7, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 0
  store i8 %49, i8* %51, align 1
  %52 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 1
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  %55 = add nsw i32 %54, 128
  %56 = trunc i32 %55 to i8
  %57 = load i8*, i8** %7, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 1
  store i8 %56, i8* %58, align 1
  store i32 2, i32* %5, align 4
  br label %201

59:                                               ; preds = %26
  %60 = load i32, i32* %6, align 4
  %61 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @jisx0201_wctomb(i32 %60, i8* %61, i32 %62, i32 1)
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* @RET_ILUNI, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %89

67:                                               ; preds = %59
  %68 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i32
  %71 = icmp sge i32 %70, 128
  br i1 %71, label %72, label %89

72:                                               ; preds = %67
  %73 = load i32, i32* %11, align 4
  %74 = icmp ne i32 %73, 1
  br i1 %74, label %75, label %77

75:                                               ; preds = %72
  %76 = call i32 (...) @abort() #3
  unreachable

77:                                               ; preds = %72
  %78 = load i32, i32* %9, align 4
  %79 = icmp slt i32 %78, 2
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %81, i32* %5, align 4
  br label %201

82:                                               ; preds = %77
  %83 = load i8*, i8** %7, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 0
  store i8 -114, i8* %84, align 1
  %85 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  %86 = load i8, i8* %85, align 1
  %87 = load i8*, i8** %7, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 1
  store i8 %86, i8* %88, align 1
  store i32 2, i32* %5, align 4
  br label %201

89:                                               ; preds = %67, %59
  %90 = load i32, i32* %6, align 4
  %91 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @jisx0212_wctomb(i32 %90, i8* %91, i32 %92, i32 2)
  store i32 %93, i32* %11, align 4
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* @RET_ILUNI, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %124

97:                                               ; preds = %89
  %98 = load i32, i32* %11, align 4
  %99 = icmp ne i32 %98, 2
  br i1 %99, label %100, label %102

100:                                              ; preds = %97
  %101 = call i32 (...) @abort() #3
  unreachable

102:                                              ; preds = %97
  %103 = load i32, i32* %9, align 4
  %104 = icmp slt i32 %103, 3
  br i1 %104, label %105, label %107

105:                                              ; preds = %102
  %106 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %106, i32* %5, align 4
  br label %201

107:                                              ; preds = %102
  %108 = load i8*, i8** %7, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 0
  store i8 -113, i8* %109, align 1
  %110 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  %111 = load i8, i8* %110, align 1
  %112 = zext i8 %111 to i32
  %113 = add nsw i32 %112, 128
  %114 = trunc i32 %113 to i8
  %115 = load i8*, i8** %7, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 1
  store i8 %114, i8* %116, align 1
  %117 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 1
  %118 = load i8, i8* %117, align 1
  %119 = zext i8 %118 to i32
  %120 = add nsw i32 %119, 128
  %121 = trunc i32 %120 to i8
  %122 = load i8*, i8** %7, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 2
  store i8 %121, i8* %123, align 1
  store i32 3, i32* %5, align 4
  br label %201

124:                                              ; preds = %89
  %125 = load i32, i32* %8, align 4
  %126 = icmp eq i32 %125, 165
  br i1 %126, label %127, label %130

127:                                              ; preds = %124
  %128 = load i8*, i8** %7, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 0
  store i8 92, i8* %129, align 1
  store i32 1, i32* %5, align 4
  br label %201

130:                                              ; preds = %124
  %131 = load i32, i32* %8, align 4
  %132 = icmp eq i32 %131, 8254
  br i1 %132, label %133, label %136

133:                                              ; preds = %130
  %134 = load i8*, i8** %7, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 0
  store i8 126, i8* %135, align 1
  store i32 1, i32* %5, align 4
  br label %201

136:                                              ; preds = %130
  %137 = load i32, i32* %8, align 4
  %138 = icmp sge i32 %137, 57344
  br i1 %138, label %139, label %199

139:                                              ; preds = %136
  %140 = load i32, i32* %8, align 4
  %141 = icmp slt i32 %140, 59224
  br i1 %141, label %142, label %199

142:                                              ; preds = %139
  %143 = load i32, i32* %8, align 4
  %144 = icmp slt i32 %143, 58284
  br i1 %144, label %145, label %171

145:                                              ; preds = %142
  %146 = load i32, i32* %9, align 4
  %147 = icmp slt i32 %146, 2
  br i1 %147, label %148, label %150

148:                                              ; preds = %145
  %149 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %149, i32* %5, align 4
  br label %201

150:                                              ; preds = %145
  %151 = load i32, i32* %8, align 4
  %152 = sub nsw i32 %151, 57344
  %153 = udiv i32 %152, 94
  %154 = trunc i32 %153 to i8
  store i8 %154, i8* %12, align 1
  %155 = load i32, i32* %8, align 4
  %156 = sub nsw i32 %155, 57344
  %157 = urem i32 %156, 94
  %158 = trunc i32 %157 to i8
  store i8 %158, i8* %13, align 1
  %159 = load i8, i8* %12, align 1
  %160 = zext i8 %159 to i32
  %161 = add nsw i32 %160, 245
  %162 = trunc i32 %161 to i8
  %163 = load i8*, i8** %7, align 8
  %164 = getelementptr inbounds i8, i8* %163, i64 0
  store i8 %162, i8* %164, align 1
  %165 = load i8, i8* %13, align 1
  %166 = zext i8 %165 to i32
  %167 = add nsw i32 %166, 161
  %168 = trunc i32 %167 to i8
  %169 = load i8*, i8** %7, align 8
  %170 = getelementptr inbounds i8, i8* %169, i64 1
  store i8 %168, i8* %170, align 1
  store i32 2, i32* %5, align 4
  br label %201

171:                                              ; preds = %142
  %172 = load i32, i32* %9, align 4
  %173 = icmp slt i32 %172, 3
  br i1 %173, label %174, label %176

174:                                              ; preds = %171
  %175 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %175, i32* %5, align 4
  br label %201

176:                                              ; preds = %171
  %177 = load i32, i32* %8, align 4
  %178 = sub nsw i32 %177, 58284
  %179 = udiv i32 %178, 94
  %180 = trunc i32 %179 to i8
  store i8 %180, i8* %14, align 1
  %181 = load i32, i32* %8, align 4
  %182 = sub nsw i32 %181, 58284
  %183 = urem i32 %182, 94
  %184 = trunc i32 %183 to i8
  store i8 %184, i8* %15, align 1
  %185 = load i8*, i8** %7, align 8
  %186 = getelementptr inbounds i8, i8* %185, i64 0
  store i8 -113, i8* %186, align 1
  %187 = load i8, i8* %14, align 1
  %188 = zext i8 %187 to i32
  %189 = add nsw i32 %188, 245
  %190 = trunc i32 %189 to i8
  %191 = load i8*, i8** %7, align 8
  %192 = getelementptr inbounds i8, i8* %191, i64 1
  store i8 %190, i8* %192, align 1
  %193 = load i8, i8* %15, align 1
  %194 = zext i8 %193 to i32
  %195 = add nsw i32 %194, 161
  %196 = trunc i32 %195 to i8
  %197 = load i8*, i8** %7, align 8
  %198 = getelementptr inbounds i8, i8* %197, i64 2
  store i8 %196, i8* %198, align 1
  store i32 3, i32* %5, align 4
  br label %201

199:                                              ; preds = %139, %136
  %200 = load i32, i32* @RET_ILUNI, align 4
  store i32 %200, i32* %5, align 4
  br label %201

201:                                              ; preds = %199, %176, %174, %150, %148, %133, %127, %107, %105, %82, %80, %44, %42, %24
  %202 = load i32, i32* %5, align 4
  ret i32 %202
}

declare dso_local i32 @ascii_wctomb(i32, i8*, i32, i32) #1

declare dso_local i32 @jisx0208_wctomb(i32, i8*, i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @jisx0201_wctomb(i32, i8*, i32, i32) #1

declare dso_local i32 @jisx0212_wctomb(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
