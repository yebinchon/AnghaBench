; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_cmdutils.c_dump_argument.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_cmdutils.c_dump_argument.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@report_file = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"\\%c\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"\\x%02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @dump_argument to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_argument(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  store i8* %4, i8** %3, align 8
  br label %5

5:                                                ; preds = %46, %1
  %6 = load i8*, i8** %3, align 8
  %7 = load i8, i8* %6, align 1
  %8 = icmp ne i8 %7, 0
  br i1 %8, label %9, label %49

9:                                                ; preds = %5
  %10 = load i8*, i8** %3, align 8
  %11 = load i8, i8* %10, align 1
  %12 = zext i8 %11 to i32
  %13 = icmp sge i32 %12, 43
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  %15 = load i8*, i8** %3, align 8
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i32
  %18 = icmp sle i32 %17, 58
  br i1 %18, label %45, label %19

19:                                               ; preds = %14, %9
  %20 = load i8*, i8** %3, align 8
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  %23 = icmp sge i32 %22, 64
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load i8*, i8** %3, align 8
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp sle i32 %27, 90
  br i1 %28, label %45, label %29

29:                                               ; preds = %24, %19
  %30 = load i8*, i8** %3, align 8
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = icmp eq i32 %32, 95
  br i1 %33, label %45, label %34

34:                                               ; preds = %29
  %35 = load i8*, i8** %3, align 8
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp sge i32 %37, 97
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load i8*, i8** %3, align 8
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = icmp sle i32 %42, 122
  br i1 %43, label %45, label %44

44:                                               ; preds = %39, %34
  br label %49

45:                                               ; preds = %39, %29, %24, %14
  br label %46

46:                                               ; preds = %45
  %47 = load i8*, i8** %3, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %3, align 8
  br label %5

49:                                               ; preds = %44, %5
  %50 = load i8*, i8** %3, align 8
  %51 = load i8, i8* %50, align 1
  %52 = icmp ne i8 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = load i8*, i8** %2, align 8
  %55 = load i32, i32* @report_file, align 4
  %56 = call i32 @fputs(i8* %54, i32 %55)
  br label %118

57:                                               ; preds = %49
  %58 = load i32, i32* @report_file, align 4
  %59 = call i32 @fputc(i8 zeroext 34, i32 %58)
  %60 = load i8*, i8** %2, align 8
  store i8* %60, i8** %3, align 8
  br label %61

61:                                               ; preds = %112, %57
  %62 = load i8*, i8** %3, align 8
  %63 = load i8, i8* %62, align 1
  %64 = icmp ne i8 %63, 0
  br i1 %64, label %65, label %115

65:                                               ; preds = %61
  %66 = load i8*, i8** %3, align 8
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  %69 = icmp eq i32 %68, 92
  br i1 %69, label %85, label %70

70:                                               ; preds = %65
  %71 = load i8*, i8** %3, align 8
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  %74 = icmp eq i32 %73, 34
  br i1 %74, label %85, label %75

75:                                               ; preds = %70
  %76 = load i8*, i8** %3, align 8
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i32
  %79 = icmp eq i32 %78, 36
  br i1 %79, label %85, label %80

80:                                               ; preds = %75
  %81 = load i8*, i8** %3, align 8
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = icmp eq i32 %83, 96
  br i1 %84, label %85, label %90

85:                                               ; preds = %80, %75, %70, %65
  %86 = load i32, i32* @report_file, align 4
  %87 = load i8*, i8** %3, align 8
  %88 = load i8, i8* %87, align 1
  %89 = call i32 @fprintf(i32 %86, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8 zeroext %88)
  br label %111

90:                                               ; preds = %80
  %91 = load i8*, i8** %3, align 8
  %92 = load i8, i8* %91, align 1
  %93 = zext i8 %92 to i32
  %94 = icmp slt i32 %93, 32
  br i1 %94, label %100, label %95

95:                                               ; preds = %90
  %96 = load i8*, i8** %3, align 8
  %97 = load i8, i8* %96, align 1
  %98 = zext i8 %97 to i32
  %99 = icmp sgt i32 %98, 126
  br i1 %99, label %100, label %105

100:                                              ; preds = %95, %90
  %101 = load i32, i32* @report_file, align 4
  %102 = load i8*, i8** %3, align 8
  %103 = load i8, i8* %102, align 1
  %104 = call i32 @fprintf(i32 %101, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %103)
  br label %110

105:                                              ; preds = %95
  %106 = load i8*, i8** %3, align 8
  %107 = load i8, i8* %106, align 1
  %108 = load i32, i32* @report_file, align 4
  %109 = call i32 @fputc(i8 zeroext %107, i32 %108)
  br label %110

110:                                              ; preds = %105, %100
  br label %111

111:                                              ; preds = %110, %85
  br label %112

112:                                              ; preds = %111
  %113 = load i8*, i8** %3, align 8
  %114 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %114, i8** %3, align 8
  br label %61

115:                                              ; preds = %61
  %116 = load i32, i32* @report_file, align 4
  %117 = call i32 @fputc(i8 zeroext 34, i32 %116)
  br label %118

118:                                              ; preds = %115, %53
  ret void
}

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @fputc(i8 zeroext, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
