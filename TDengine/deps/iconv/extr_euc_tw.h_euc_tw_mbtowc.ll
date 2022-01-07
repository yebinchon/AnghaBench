; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_euc_tw.h_euc_tw_mbtowc.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_euc_tw.h_euc_tw_mbtowc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RET_ILSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i8*, i32)* @euc_tw_mbtowc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @euc_tw_mbtowc(i32 %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca [2 x i8], align 1
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca [2 x i8], align 1
  %17 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load i8*, i8** %8, align 8
  %19 = load i8, i8* %18, align 1
  store i8 %19, i8* %10, align 1
  %20 = load i8, i8* %10, align 1
  %21 = zext i8 %20 to i32
  %22 = icmp slt i32 %21, 128
  br i1 %22, label %23, label %29

23:                                               ; preds = %4
  %24 = load i32, i32* %6, align 4
  %25 = load i32*, i32** %7, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @ascii_mbtowc(i32 %24, i32* %25, i8* %26, i32 %27)
  store i32 %28, i32* %5, align 4
  br label %184

29:                                               ; preds = %4
  %30 = load i8, i8* %10, align 1
  %31 = zext i8 %30 to i32
  %32 = icmp sge i32 %31, 161
  br i1 %32, label %33, label %70

33:                                               ; preds = %29
  %34 = load i8, i8* %10, align 1
  %35 = zext i8 %34 to i32
  %36 = icmp slt i32 %35, 255
  br i1 %36, label %37, label %70

37:                                               ; preds = %33
  %38 = load i32, i32* %9, align 4
  %39 = icmp slt i32 %38, 2
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = call i32 @RET_TOOFEW(i32 0)
  store i32 %41, i32* %5, align 4
  br label %184

42:                                               ; preds = %37
  %43 = load i8*, i8** %8, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  %45 = load i8, i8* %44, align 1
  store i8 %45, i8* %11, align 1
  %46 = load i8, i8* %11, align 1
  %47 = zext i8 %46 to i32
  %48 = icmp sge i32 %47, 161
  br i1 %48, label %49, label %68

49:                                               ; preds = %42
  %50 = load i8, i8* %11, align 1
  %51 = zext i8 %50 to i32
  %52 = icmp slt i32 %51, 255
  br i1 %52, label %53, label %68

53:                                               ; preds = %49
  %54 = load i8, i8* %10, align 1
  %55 = zext i8 %54 to i32
  %56 = sub nsw i32 %55, 128
  %57 = trunc i32 %56 to i8
  %58 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  store i8 %57, i8* %58, align 1
  %59 = load i8, i8* %11, align 1
  %60 = zext i8 %59 to i32
  %61 = sub nsw i32 %60, 128
  %62 = trunc i32 %61 to i8
  %63 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 1
  store i8 %62, i8* %63, align 1
  %64 = load i32, i32* %6, align 4
  %65 = load i32*, i32** %7, align 8
  %66 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %67 = call i32 @cns11643_1_mbtowc(i32 %64, i32* %65, i8* %66, i32 2)
  store i32 %67, i32* %5, align 4
  br label %184

68:                                               ; preds = %49, %42
  %69 = load i32, i32* @RET_ILSEQ, align 4
  store i32 %69, i32* %5, align 4
  br label %184

70:                                               ; preds = %33, %29
  %71 = load i8, i8* %10, align 1
  %72 = zext i8 %71 to i32
  %73 = icmp eq i32 %72, 142
  br i1 %73, label %74, label %182

74:                                               ; preds = %70
  %75 = load i32, i32* %9, align 4
  %76 = icmp slt i32 %75, 4
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = call i32 @RET_TOOFEW(i32 0)
  store i32 %78, i32* %5, align 4
  br label %184

79:                                               ; preds = %74
  %80 = load i8*, i8** %8, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 1
  %82 = load i8, i8* %81, align 1
  store i8 %82, i8* %13, align 1
  %83 = load i8, i8* %13, align 1
  %84 = zext i8 %83 to i32
  %85 = icmp sge i32 %84, 161
  br i1 %85, label %86, label %181

86:                                               ; preds = %79
  %87 = load i8, i8* %13, align 1
  %88 = zext i8 %87 to i32
  %89 = icmp sle i32 %88, 176
  br i1 %89, label %90, label %181

90:                                               ; preds = %86
  %91 = load i8*, i8** %8, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 2
  %93 = load i8, i8* %92, align 1
  store i8 %93, i8* %14, align 1
  %94 = load i8*, i8** %8, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 3
  %96 = load i8, i8* %95, align 1
  store i8 %96, i8* %15, align 1
  %97 = load i8, i8* %14, align 1
  %98 = zext i8 %97 to i32
  %99 = icmp sge i32 %98, 161
  br i1 %99, label %100, label %180

100:                                              ; preds = %90
  %101 = load i8, i8* %14, align 1
  %102 = zext i8 %101 to i32
  %103 = icmp slt i32 %102, 255
  br i1 %103, label %104, label %180

104:                                              ; preds = %100
  %105 = load i8, i8* %15, align 1
  %106 = zext i8 %105 to i32
  %107 = icmp sge i32 %106, 161
  br i1 %107, label %108, label %180

108:                                              ; preds = %104
  %109 = load i8, i8* %15, align 1
  %110 = zext i8 %109 to i32
  %111 = icmp slt i32 %110, 255
  br i1 %111, label %112, label %180

112:                                              ; preds = %108
  %113 = load i8, i8* %14, align 1
  %114 = zext i8 %113 to i32
  %115 = sub nsw i32 %114, 128
  %116 = trunc i32 %115 to i8
  %117 = getelementptr inbounds [2 x i8], [2 x i8]* %16, i64 0, i64 0
  store i8 %116, i8* %117, align 1
  %118 = load i8, i8* %15, align 1
  %119 = zext i8 %118 to i32
  %120 = sub nsw i32 %119, 128
  %121 = trunc i32 %120 to i8
  %122 = getelementptr inbounds [2 x i8], [2 x i8]* %16, i64 0, i64 1
  store i8 %121, i8* %122, align 1
  %123 = load i8, i8* %13, align 1
  %124 = zext i8 %123 to i32
  %125 = sub nsw i32 %124, 160
  switch i32 %125, label %166 [
    i32 1, label %126
    i32 2, label %131
    i32 3, label %136
    i32 4, label %141
    i32 5, label %146
    i32 6, label %151
    i32 7, label %156
    i32 15, label %161
  ]

126:                                              ; preds = %112
  %127 = load i32, i32* %6, align 4
  %128 = load i32*, i32** %7, align 8
  %129 = getelementptr inbounds [2 x i8], [2 x i8]* %16, i64 0, i64 0
  %130 = call i32 @cns11643_1_mbtowc(i32 %127, i32* %128, i8* %129, i32 2)
  store i32 %130, i32* %17, align 4
  br label %168

131:                                              ; preds = %112
  %132 = load i32, i32* %6, align 4
  %133 = load i32*, i32** %7, align 8
  %134 = getelementptr inbounds [2 x i8], [2 x i8]* %16, i64 0, i64 0
  %135 = call i32 @cns11643_2_mbtowc(i32 %132, i32* %133, i8* %134, i32 2)
  store i32 %135, i32* %17, align 4
  br label %168

136:                                              ; preds = %112
  %137 = load i32, i32* %6, align 4
  %138 = load i32*, i32** %7, align 8
  %139 = getelementptr inbounds [2 x i8], [2 x i8]* %16, i64 0, i64 0
  %140 = call i32 @cns11643_3_mbtowc(i32 %137, i32* %138, i8* %139, i32 2)
  store i32 %140, i32* %17, align 4
  br label %168

141:                                              ; preds = %112
  %142 = load i32, i32* %6, align 4
  %143 = load i32*, i32** %7, align 8
  %144 = getelementptr inbounds [2 x i8], [2 x i8]* %16, i64 0, i64 0
  %145 = call i32 @cns11643_4_mbtowc(i32 %142, i32* %143, i8* %144, i32 2)
  store i32 %145, i32* %17, align 4
  br label %168

146:                                              ; preds = %112
  %147 = load i32, i32* %6, align 4
  %148 = load i32*, i32** %7, align 8
  %149 = getelementptr inbounds [2 x i8], [2 x i8]* %16, i64 0, i64 0
  %150 = call i32 @cns11643_5_mbtowc(i32 %147, i32* %148, i8* %149, i32 2)
  store i32 %150, i32* %17, align 4
  br label %168

151:                                              ; preds = %112
  %152 = load i32, i32* %6, align 4
  %153 = load i32*, i32** %7, align 8
  %154 = getelementptr inbounds [2 x i8], [2 x i8]* %16, i64 0, i64 0
  %155 = call i32 @cns11643_6_mbtowc(i32 %152, i32* %153, i8* %154, i32 2)
  store i32 %155, i32* %17, align 4
  br label %168

156:                                              ; preds = %112
  %157 = load i32, i32* %6, align 4
  %158 = load i32*, i32** %7, align 8
  %159 = getelementptr inbounds [2 x i8], [2 x i8]* %16, i64 0, i64 0
  %160 = call i32 @cns11643_7_mbtowc(i32 %157, i32* %158, i8* %159, i32 2)
  store i32 %160, i32* %17, align 4
  br label %168

161:                                              ; preds = %112
  %162 = load i32, i32* %6, align 4
  %163 = load i32*, i32** %7, align 8
  %164 = getelementptr inbounds [2 x i8], [2 x i8]* %16, i64 0, i64 0
  %165 = call i32 @cns11643_15_mbtowc(i32 %162, i32* %163, i8* %164, i32 2)
  store i32 %165, i32* %17, align 4
  br label %168

166:                                              ; preds = %112
  %167 = load i32, i32* @RET_ILSEQ, align 4
  store i32 %167, i32* %5, align 4
  br label %184

168:                                              ; preds = %161, %156, %151, %146, %141, %136, %131, %126
  %169 = load i32, i32* %17, align 4
  %170 = load i32, i32* @RET_ILSEQ, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %172, label %174

172:                                              ; preds = %168
  %173 = load i32, i32* @RET_ILSEQ, align 4
  store i32 %173, i32* %5, align 4
  br label %184

174:                                              ; preds = %168
  %175 = load i32, i32* %17, align 4
  %176 = icmp ne i32 %175, 2
  br i1 %176, label %177, label %179

177:                                              ; preds = %174
  %178 = call i32 (...) @abort() #3
  unreachable

179:                                              ; preds = %174
  store i32 4, i32* %5, align 4
  br label %184

180:                                              ; preds = %108, %104, %100, %90
  br label %181

181:                                              ; preds = %180, %86, %79
  br label %182

182:                                              ; preds = %181, %70
  %183 = load i32, i32* @RET_ILSEQ, align 4
  store i32 %183, i32* %5, align 4
  br label %184

184:                                              ; preds = %182, %179, %172, %166, %77, %68, %53, %40, %23
  %185 = load i32, i32* %5, align 4
  ret i32 %185
}

declare dso_local i32 @ascii_mbtowc(i32, i32*, i8*, i32) #1

declare dso_local i32 @RET_TOOFEW(i32) #1

declare dso_local i32 @cns11643_1_mbtowc(i32, i32*, i8*, i32) #1

declare dso_local i32 @cns11643_2_mbtowc(i32, i32*, i8*, i32) #1

declare dso_local i32 @cns11643_3_mbtowc(i32, i32*, i8*, i32) #1

declare dso_local i32 @cns11643_4_mbtowc(i32, i32*, i8*, i32) #1

declare dso_local i32 @cns11643_5_mbtowc(i32, i32*, i8*, i32) #1

declare dso_local i32 @cns11643_6_mbtowc(i32, i32*, i8*, i32) #1

declare dso_local i32 @cns11643_7_mbtowc(i32, i32*, i8*, i32) #1

declare dso_local i32 @cns11643_15_mbtowc(i32, i32*, i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
