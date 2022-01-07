; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_dec_hanyu.h_dec_hanyu_mbtowc.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_dec_hanyu.h_dec_hanyu_mbtowc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RET_ILSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i8*, i32)* @dec_hanyu_mbtowc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dec_hanyu_mbtowc(i32 %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca [2 x i8], align 1
  %13 = alloca i32, align 4
  %14 = alloca [2 x i8], align 1
  %15 = alloca [2 x i8], align 1
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load i8*, i8** %8, align 8
  %17 = load i8, i8* %16, align 1
  store i8 %17, i8* %10, align 1
  %18 = load i8, i8* %10, align 1
  %19 = zext i8 %18 to i32
  %20 = icmp slt i32 %19, 128
  br i1 %20, label %21, label %27

21:                                               ; preds = %4
  %22 = load i32, i32* %6, align 4
  %23 = load i32*, i32** %7, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @ascii_mbtowc(i32 %22, i32* %23, i8* %24, i32 %25)
  store i32 %26, i32* %5, align 4
  br label %167

27:                                               ; preds = %4
  %28 = load i8, i8* %10, align 1
  %29 = zext i8 %28 to i32
  %30 = icmp sge i32 %29, 161
  br i1 %30, label %31, label %165

31:                                               ; preds = %27
  %32 = load i8, i8* %10, align 1
  %33 = zext i8 %32 to i32
  %34 = icmp slt i32 %33, 255
  br i1 %34, label %35, label %165

35:                                               ; preds = %31
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %36, 2
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = call i32 @RET_TOOFEW(i32 0)
  store i32 %39, i32* %5, align 4
  br label %167

40:                                               ; preds = %35
  %41 = load i8*, i8** %8, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  %43 = load i8, i8* %42, align 1
  store i8 %43, i8* %11, align 1
  %44 = load i8, i8* %10, align 1
  %45 = zext i8 %44 to i32
  %46 = icmp eq i32 %45, 194
  br i1 %46, label %47, label %110

47:                                               ; preds = %40
  %48 = load i8, i8* %11, align 1
  %49 = zext i8 %48 to i32
  %50 = icmp eq i32 %49, 203
  br i1 %50, label %51, label %110

51:                                               ; preds = %47
  %52 = load i32, i32* %9, align 4
  %53 = icmp slt i32 %52, 4
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = call i32 @RET_TOOFEW(i32 0)
  store i32 %55, i32* %5, align 4
  br label %167

56:                                               ; preds = %51
  %57 = load i8*, i8** %8, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 2
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = icmp sge i32 %60, 161
  br i1 %61, label %62, label %109

62:                                               ; preds = %56
  %63 = load i8*, i8** %8, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 2
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = icmp slt i32 %66, 255
  br i1 %67, label %68, label %109

68:                                               ; preds = %62
  %69 = load i8*, i8** %8, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 3
  %71 = load i8, i8* %70, align 1
  %72 = zext i8 %71 to i32
  %73 = icmp sge i32 %72, 161
  br i1 %73, label %74, label %109

74:                                               ; preds = %68
  %75 = load i8*, i8** %8, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 3
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i32
  %79 = icmp slt i32 %78, 255
  br i1 %79, label %80, label %109

80:                                               ; preds = %74
  %81 = load i8*, i8** %8, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 2
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i32
  %85 = sub nsw i32 %84, 128
  %86 = trunc i32 %85 to i8
  %87 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  store i8 %86, i8* %87, align 1
  %88 = load i8*, i8** %8, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 3
  %90 = load i8, i8* %89, align 1
  %91 = zext i8 %90 to i32
  %92 = sub nsw i32 %91, 128
  %93 = trunc i32 %92 to i8
  %94 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 1
  store i8 %93, i8* %94, align 1
  %95 = load i32, i32* %6, align 4
  %96 = load i32*, i32** %7, align 8
  %97 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %98 = call i32 @cns11643_3_mbtowc(i32 %95, i32* %96, i8* %97, i32 2)
  store i32 %98, i32* %13, align 4
  %99 = load i32, i32* %13, align 4
  %100 = load i32, i32* @RET_ILSEQ, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %108

102:                                              ; preds = %80
  %103 = load i32, i32* %13, align 4
  %104 = icmp ne i32 %103, 2
  br i1 %104, label %105, label %107

105:                                              ; preds = %102
  %106 = call i32 (...) @abort() #3
  unreachable

107:                                              ; preds = %102
  store i32 4, i32* %5, align 4
  br label %167

108:                                              ; preds = %80
  br label %109

109:                                              ; preds = %108, %74, %68, %62, %56
  br label %164

110:                                              ; preds = %47, %40
  %111 = load i8, i8* %11, align 1
  %112 = zext i8 %111 to i32
  %113 = icmp sge i32 %112, 161
  br i1 %113, label %114, label %142

114:                                              ; preds = %110
  %115 = load i8, i8* %11, align 1
  %116 = zext i8 %115 to i32
  %117 = icmp slt i32 %116, 255
  br i1 %117, label %118, label %142

118:                                              ; preds = %114
  %119 = load i8, i8* %10, align 1
  %120 = zext i8 %119 to i32
  %121 = icmp ne i32 %120, 194
  br i1 %121, label %126, label %122

122:                                              ; preds = %118
  %123 = load i8, i8* %11, align 1
  %124 = zext i8 %123 to i32
  %125 = icmp slt i32 %124, 194
  br i1 %125, label %126, label %141

126:                                              ; preds = %122, %118
  %127 = load i8, i8* %10, align 1
  %128 = zext i8 %127 to i32
  %129 = sub nsw i32 %128, 128
  %130 = trunc i32 %129 to i8
  %131 = getelementptr inbounds [2 x i8], [2 x i8]* %14, i64 0, i64 0
  store i8 %130, i8* %131, align 1
  %132 = load i8, i8* %11, align 1
  %133 = zext i8 %132 to i32
  %134 = sub nsw i32 %133, 128
  %135 = trunc i32 %134 to i8
  %136 = getelementptr inbounds [2 x i8], [2 x i8]* %14, i64 0, i64 1
  store i8 %135, i8* %136, align 1
  %137 = load i32, i32* %6, align 4
  %138 = load i32*, i32** %7, align 8
  %139 = getelementptr inbounds [2 x i8], [2 x i8]* %14, i64 0, i64 0
  %140 = call i32 @cns11643_1_mbtowc(i32 %137, i32* %138, i8* %139, i32 2)
  store i32 %140, i32* %5, align 4
  br label %167

141:                                              ; preds = %122
  br label %163

142:                                              ; preds = %114, %110
  %143 = load i8, i8* %11, align 1
  %144 = zext i8 %143 to i32
  %145 = icmp sge i32 %144, 33
  br i1 %145, label %146, label %162

146:                                              ; preds = %142
  %147 = load i8, i8* %11, align 1
  %148 = zext i8 %147 to i32
  %149 = icmp slt i32 %148, 127
  br i1 %149, label %150, label %162

150:                                              ; preds = %146
  %151 = load i8, i8* %10, align 1
  %152 = zext i8 %151 to i32
  %153 = sub nsw i32 %152, 128
  %154 = trunc i32 %153 to i8
  %155 = getelementptr inbounds [2 x i8], [2 x i8]* %15, i64 0, i64 0
  store i8 %154, i8* %155, align 1
  %156 = load i8, i8* %11, align 1
  %157 = getelementptr inbounds [2 x i8], [2 x i8]* %15, i64 0, i64 1
  store i8 %156, i8* %157, align 1
  %158 = load i32, i32* %6, align 4
  %159 = load i32*, i32** %7, align 8
  %160 = getelementptr inbounds [2 x i8], [2 x i8]* %15, i64 0, i64 0
  %161 = call i32 @cns11643_2_mbtowc(i32 %158, i32* %159, i8* %160, i32 2)
  store i32 %161, i32* %5, align 4
  br label %167

162:                                              ; preds = %146, %142
  br label %163

163:                                              ; preds = %162, %141
  br label %164

164:                                              ; preds = %163, %109
  br label %165

165:                                              ; preds = %164, %31, %27
  %166 = load i32, i32* @RET_ILSEQ, align 4
  store i32 %166, i32* %5, align 4
  br label %167

167:                                              ; preds = %165, %150, %126, %107, %54, %38, %21
  %168 = load i32, i32* %5, align 4
  ret i32 %168
}

declare dso_local i32 @ascii_mbtowc(i32, i32*, i8*, i32) #1

declare dso_local i32 @RET_TOOFEW(i32) #1

declare dso_local i32 @cns11643_3_mbtowc(i32, i32*, i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @cns11643_1_mbtowc(i32, i32*, i8*, i32) #1

declare dso_local i32 @cns11643_2_mbtowc(i32, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
