; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_sjis.h_sjis_wctomb.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_sjis.h_sjis_wctomb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RET_ILUNI = common dso_local global i32 0, align 4
@RET_TOOSMALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32)* @sjis_wctomb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sjis_wctomb(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
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
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  %18 = alloca i8, align 1
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %19 = load i32, i32* %6, align 4
  %20 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @jisx0201_wctomb(i32 %19, i8* %20, i32 %21, i32 1)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* @RET_ILUNI, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %50

26:                                               ; preds = %4
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 1
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = call i32 (...) @abort() #3
  unreachable

31:                                               ; preds = %26
  %32 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  %33 = load i8, i8* %32, align 1
  store i8 %33, i8* %12, align 1
  %34 = load i8, i8* %12, align 1
  %35 = zext i8 %34 to i32
  %36 = icmp slt i32 %35, 128
  br i1 %36, label %45, label %37

37:                                               ; preds = %31
  %38 = load i8, i8* %12, align 1
  %39 = zext i8 %38 to i32
  %40 = icmp sge i32 %39, 161
  br i1 %40, label %41, label %49

41:                                               ; preds = %37
  %42 = load i8, i8* %12, align 1
  %43 = zext i8 %42 to i32
  %44 = icmp sle i32 %43, 223
  br i1 %44, label %45, label %49

45:                                               ; preds = %41, %31
  %46 = load i8, i8* %12, align 1
  %47 = load i8*, i8** %7, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 0
  store i8 %46, i8* %48, align 1
  store i32 1, i32* %5, align 4
  br label %183

49:                                               ; preds = %41, %37
  br label %50

50:                                               ; preds = %49, %4
  %51 = load i32, i32* %6, align 4
  %52 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @jisx0208_wctomb(i32 %51, i8* %52, i32 %53, i32 2)
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* @RET_ILUNI, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %139

58:                                               ; preds = %50
  %59 = load i32, i32* %11, align 4
  %60 = icmp ne i32 %59, 2
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = call i32 (...) @abort() #3
  unreachable

63:                                               ; preds = %58
  %64 = load i32, i32* %9, align 4
  %65 = icmp slt i32 %64, 2
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %67, i32* %5, align 4
  br label %183

68:                                               ; preds = %63
  %69 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  %70 = load i8, i8* %69, align 1
  store i8 %70, i8* %13, align 1
  %71 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 1
  %72 = load i8, i8* %71, align 1
  store i8 %72, i8* %14, align 1
  %73 = load i8, i8* %13, align 1
  %74 = zext i8 %73 to i32
  %75 = icmp sge i32 %74, 33
  br i1 %75, label %76, label %138

76:                                               ; preds = %68
  %77 = load i8, i8* %13, align 1
  %78 = zext i8 %77 to i32
  %79 = icmp sle i32 %78, 116
  br i1 %79, label %80, label %138

80:                                               ; preds = %76
  %81 = load i8, i8* %14, align 1
  %82 = zext i8 %81 to i32
  %83 = icmp sge i32 %82, 33
  br i1 %83, label %84, label %138

84:                                               ; preds = %80
  %85 = load i8, i8* %14, align 1
  %86 = zext i8 %85 to i32
  %87 = icmp sle i32 %86, 126
  br i1 %87, label %88, label %138

88:                                               ; preds = %84
  %89 = load i8, i8* %13, align 1
  %90 = zext i8 %89 to i32
  %91 = sub nsw i32 %90, 33
  %92 = ashr i32 %91, 1
  %93 = trunc i32 %92 to i8
  store i8 %93, i8* %15, align 1
  %94 = load i8, i8* %13, align 1
  %95 = zext i8 %94 to i32
  %96 = sub nsw i32 %95, 33
  %97 = and i32 %96, 1
  %98 = icmp ne i32 %97, 0
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i32 94, i32 0
  %101 = load i8, i8* %14, align 1
  %102 = zext i8 %101 to i32
  %103 = sub nsw i32 %102, 33
  %104 = add nsw i32 %100, %103
  %105 = trunc i32 %104 to i8
  store i8 %105, i8* %16, align 1
  %106 = load i8, i8* %15, align 1
  %107 = zext i8 %106 to i32
  %108 = icmp slt i32 %107, 31
  br i1 %108, label %109, label %113

109:                                              ; preds = %88
  %110 = load i8, i8* %15, align 1
  %111 = zext i8 %110 to i32
  %112 = add nsw i32 %111, 129
  br label %117

113:                                              ; preds = %88
  %114 = load i8, i8* %15, align 1
  %115 = zext i8 %114 to i32
  %116 = add nsw i32 %115, 193
  br label %117

117:                                              ; preds = %113, %109
  %118 = phi i32 [ %112, %109 ], [ %116, %113 ]
  %119 = trunc i32 %118 to i8
  %120 = load i8*, i8** %7, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 0
  store i8 %119, i8* %121, align 1
  %122 = load i8, i8* %16, align 1
  %123 = zext i8 %122 to i32
  %124 = icmp slt i32 %123, 63
  br i1 %124, label %125, label %129

125:                                              ; preds = %117
  %126 = load i8, i8* %16, align 1
  %127 = zext i8 %126 to i32
  %128 = add nsw i32 %127, 64
  br label %133

129:                                              ; preds = %117
  %130 = load i8, i8* %16, align 1
  %131 = zext i8 %130 to i32
  %132 = add nsw i32 %131, 65
  br label %133

133:                                              ; preds = %129, %125
  %134 = phi i32 [ %128, %125 ], [ %132, %129 ]
  %135 = trunc i32 %134 to i8
  %136 = load i8*, i8** %7, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 1
  store i8 %135, i8* %137, align 1
  store i32 2, i32* %5, align 4
  br label %183

138:                                              ; preds = %84, %80, %76, %68
  br label %139

139:                                              ; preds = %138, %50
  %140 = load i32, i32* %8, align 4
  %141 = icmp sge i32 %140, 57344
  br i1 %141, label %142, label %181

142:                                              ; preds = %139
  %143 = load i32, i32* %8, align 4
  %144 = icmp slt i32 %143, 59224
  br i1 %144, label %145, label %181

145:                                              ; preds = %142
  %146 = load i32, i32* %9, align 4
  %147 = icmp slt i32 %146, 2
  br i1 %147, label %148, label %150

148:                                              ; preds = %145
  %149 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %149, i32* %5, align 4
  br label %183

150:                                              ; preds = %145
  %151 = load i32, i32* %8, align 4
  %152 = sub nsw i32 %151, 57344
  %153 = udiv i32 %152, 188
  %154 = trunc i32 %153 to i8
  store i8 %154, i8* %17, align 1
  %155 = load i32, i32* %8, align 4
  %156 = sub nsw i32 %155, 57344
  %157 = urem i32 %156, 188
  %158 = trunc i32 %157 to i8
  store i8 %158, i8* %18, align 1
  %159 = load i8, i8* %17, align 1
  %160 = zext i8 %159 to i32
  %161 = add nsw i32 %160, 240
  %162 = trunc i32 %161 to i8
  %163 = load i8*, i8** %7, align 8
  %164 = getelementptr inbounds i8, i8* %163, i64 0
  store i8 %162, i8* %164, align 1
  %165 = load i8, i8* %18, align 1
  %166 = zext i8 %165 to i32
  %167 = icmp slt i32 %166, 63
  br i1 %167, label %168, label %172

168:                                              ; preds = %150
  %169 = load i8, i8* %18, align 1
  %170 = zext i8 %169 to i32
  %171 = add nsw i32 %170, 64
  br label %176

172:                                              ; preds = %150
  %173 = load i8, i8* %18, align 1
  %174 = zext i8 %173 to i32
  %175 = add nsw i32 %174, 65
  br label %176

176:                                              ; preds = %172, %168
  %177 = phi i32 [ %171, %168 ], [ %175, %172 ]
  %178 = trunc i32 %177 to i8
  %179 = load i8*, i8** %7, align 8
  %180 = getelementptr inbounds i8, i8* %179, i64 1
  store i8 %178, i8* %180, align 1
  store i32 2, i32* %5, align 4
  br label %183

181:                                              ; preds = %142, %139
  %182 = load i32, i32* @RET_ILUNI, align 4
  store i32 %182, i32* %5, align 4
  br label %183

183:                                              ; preds = %181, %176, %148, %133, %66, %45
  %184 = load i32, i32* %5, align 4
  ret i32 %184
}

declare dso_local i32 @jisx0201_wctomb(i32, i8*, i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @jisx0208_wctomb(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
