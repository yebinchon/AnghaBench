; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dvbsubdec.c_dvbsub_read_8bit_string.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dvbsubdec.c_dvbsub_read_8bit_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"line overflow\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8**, i32, i8***, i32, i32, i8**, i32)* @dvbsub_read_8bit_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvbsub_read_8bit_string(i32* %0, i8** %1, i32 %2, i8*** %3, i32 %4, i32 %5, i8** %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8***, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8**, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8**, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i8** %1, i8*** %11, align 8
  store i32 %2, i32* %12, align 4
  store i8*** %3, i8**** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i8** %6, i8*** %16, align 8
  store i32 %7, i32* %17, align 4
  %22 = load i8***, i8**** %13, align 8
  %23 = load i8**, i8*** %22, align 8
  %24 = load i32, i32* %14, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8*, i8** %23, i64 %25
  store i8** %26, i8*** %18, align 8
  %27 = load i32, i32* %17, align 4
  store i32 %27, i32* %21, align 4
  %28 = load i32, i32* %17, align 4
  %29 = load i8**, i8*** %11, align 8
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds i8*, i8** %29, i64 %30
  store i8** %31, i8*** %11, align 8
  br label %32

32:                                               ; preds = %142, %8
  %33 = load i8***, i8**** %13, align 8
  %34 = load i8**, i8*** %33, align 8
  %35 = load i8**, i8*** %18, align 8
  %36 = icmp ult i8** %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load i32, i32* %21, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp slt i32 %38, %39
  br label %41

41:                                               ; preds = %37, %32
  %42 = phi i1 [ false, %32 ], [ %40, %37 ]
  br i1 %42, label %43, label %143

43:                                               ; preds = %41
  %44 = load i8***, i8**** %13, align 8
  %45 = load i8**, i8*** %44, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i32 1
  store i8** %46, i8*** %44, align 8
  %47 = load i8*, i8** %45, align 8
  %48 = ptrtoint i8* %47 to i32
  store i32 %48, i32* %19, align 4
  %49 = load i32, i32* %19, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %78

51:                                               ; preds = %43
  %52 = load i32, i32* %15, align 4
  %53 = icmp ne i32 %52, 1
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %19, align 4
  %56 = icmp ne i32 %55, 1
  br i1 %56, label %57, label %75

57:                                               ; preds = %54, %51
  %58 = load i8**, i8*** %16, align 8
  %59 = icmp ne i8** %58, null
  br i1 %59, label %60, label %68

60:                                               ; preds = %57
  %61 = load i8**, i8*** %16, align 8
  %62 = load i32, i32* %19, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8*, i8** %61, i64 %63
  %65 = load i8*, i8** %64, align 8
  %66 = load i8**, i8*** %11, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i32 1
  store i8** %67, i8*** %11, align 8
  store i8* %65, i8** %66, align 8
  br label %74

68:                                               ; preds = %57
  %69 = load i32, i32* %19, align 4
  %70 = sext i32 %69 to i64
  %71 = inttoptr i64 %70 to i8*
  %72 = load i8**, i8*** %11, align 8
  %73 = getelementptr inbounds i8*, i8** %72, i32 1
  store i8** %73, i8*** %11, align 8
  store i8* %71, i8** %72, align 8
  br label %74

74:                                               ; preds = %68, %60
  br label %75

75:                                               ; preds = %74, %54
  %76 = load i32, i32* %21, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %21, align 4
  br label %142

78:                                               ; preds = %43
  %79 = load i8***, i8**** %13, align 8
  %80 = load i8**, i8*** %79, align 8
  %81 = getelementptr inbounds i8*, i8** %80, i32 1
  store i8** %81, i8*** %79, align 8
  %82 = load i8*, i8** %80, align 8
  %83 = ptrtoint i8* %82 to i32
  store i32 %83, i32* %19, align 4
  %84 = load i32, i32* %19, align 4
  %85 = and i32 %84, 127
  store i32 %85, i32* %20, align 4
  %86 = load i32, i32* %19, align 4
  %87 = and i32 %86, 128
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %78
  %90 = load i32, i32* %20, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %89
  %93 = load i32, i32* %21, align 4
  store i32 %93, i32* %9, align 4
  br label %155

94:                                               ; preds = %89
  store i32 0, i32* %19, align 4
  br label %101

95:                                               ; preds = %78
  %96 = load i8***, i8**** %13, align 8
  %97 = load i8**, i8*** %96, align 8
  %98 = getelementptr inbounds i8*, i8** %97, i32 1
  store i8** %98, i8*** %96, align 8
  %99 = load i8*, i8** %97, align 8
  %100 = ptrtoint i8* %99 to i32
  store i32 %100, i32* %19, align 4
  br label %101

101:                                              ; preds = %95, %94
  %102 = load i32, i32* %15, align 4
  %103 = icmp eq i32 %102, 1
  br i1 %103, label %104, label %111

104:                                              ; preds = %101
  %105 = load i32, i32* %19, align 4
  %106 = icmp eq i32 %105, 1
  br i1 %106, label %107, label %111

107:                                              ; preds = %104
  %108 = load i32, i32* %20, align 4
  %109 = load i32, i32* %21, align 4
  %110 = add nsw i32 %109, %108
  store i32 %110, i32* %21, align 4
  br label %141

111:                                              ; preds = %104, %101
  %112 = load i8**, i8*** %16, align 8
  %113 = icmp ne i8** %112, null
  br i1 %113, label %114, label %121

114:                                              ; preds = %111
  %115 = load i8**, i8*** %16, align 8
  %116 = load i32, i32* %19, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8*, i8** %115, i64 %117
  %119 = load i8*, i8** %118, align 8
  %120 = ptrtoint i8* %119 to i32
  store i32 %120, i32* %19, align 4
  br label %121

121:                                              ; preds = %114, %111
  br label %122

122:                                              ; preds = %132, %121
  %123 = load i32, i32* %20, align 4
  %124 = add nsw i32 %123, -1
  store i32 %124, i32* %20, align 4
  %125 = icmp sgt i32 %123, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %122
  %127 = load i32, i32* %21, align 4
  %128 = load i32, i32* %12, align 4
  %129 = icmp slt i32 %127, %128
  br label %130

130:                                              ; preds = %126, %122
  %131 = phi i1 [ false, %122 ], [ %129, %126 ]
  br i1 %131, label %132, label %140

132:                                              ; preds = %130
  %133 = load i32, i32* %19, align 4
  %134 = sext i32 %133 to i64
  %135 = inttoptr i64 %134 to i8*
  %136 = load i8**, i8*** %11, align 8
  %137 = getelementptr inbounds i8*, i8** %136, i32 1
  store i8** %137, i8*** %11, align 8
  store i8* %135, i8** %136, align 8
  %138 = load i32, i32* %21, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %21, align 4
  br label %122

140:                                              ; preds = %130
  br label %141

141:                                              ; preds = %140, %107
  br label %142

142:                                              ; preds = %141, %75
  br label %32

143:                                              ; preds = %41
  %144 = load i8***, i8**** %13, align 8
  %145 = load i8**, i8*** %144, align 8
  %146 = getelementptr inbounds i8*, i8** %145, i32 1
  store i8** %146, i8*** %144, align 8
  %147 = load i8*, i8** %145, align 8
  %148 = icmp ne i8* %147, null
  br i1 %148, label %149, label %153

149:                                              ; preds = %143
  %150 = load i32*, i32** %10, align 8
  %151 = load i32, i32* @AV_LOG_ERROR, align 4
  %152 = call i32 @av_log(i32* %150, i32 %151, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %153

153:                                              ; preds = %149, %143
  %154 = load i32, i32* %21, align 4
  store i32 %154, i32* %9, align 4
  br label %155

155:                                              ; preds = %153, %92
  %156 = load i32, i32* %9, align 4
  ret i32 %156
}

declare dso_local i32 @av_log(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
