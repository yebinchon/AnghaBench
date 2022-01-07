; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/cpu/cyclone/Disa/extr_Disa.c_MakeRegList.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/cpu/cyclone/Disa/extr_Disa.c_MakeRegList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"%c%d/\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"%c%d-%c%d/\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @MakeRegList to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MakeRegList(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [16 x i8], align 16
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %14 = load i32, i32* %6, align 4
  %15 = and i32 %14, 56
  %16 = icmp eq i32 %15, 32
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 1, i32* %7, align 4
  br label %18

18:                                               ; preds = %17, %3
  %19 = load i32, i32* %5, align 4
  %20 = and i32 %19, 65535
  store i32 %20, i32* %5, align 4
  %21 = load i8*, i8** %4, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  store i8 0, i8* %22, align 1
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %88, %18
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %24, 17
  br i1 %25, label %26, label %91

26:                                               ; preds = %23
  store i32 0, i32* %11, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32, i32* %8, align 4
  %31 = ashr i32 32768, %30
  store i32 %31, i32* %11, align 4
  br label %35

32:                                               ; preds = %26
  %33 = load i32, i32* %8, align 4
  %34 = shl i32 1, %33
  store i32 %34, i32* %11, align 4
  br label %35

35:                                               ; preds = %32, %29
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %11, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %35
  %42 = load i32, i32* %8, align 4
  %43 = icmp eq i32 %42, 8
  br i1 %43, label %44, label %81

44:                                               ; preds = %41, %35
  %45 = bitcast [16 x i8]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %45, i8 0, i64 16, i1 false)
  %46 = load i32, i32* %9, align 4
  %47 = and i32 %46, 8
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i32 97, i32 100
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %8, align 4
  %53 = sub nsw i32 %52, 1
  %54 = icmp eq i32 %51, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %44
  %56 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i64 0, i64 0
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* %9, align 4
  %59 = and i32 %58, 7
  %60 = call i32 (i8*, i8*, i32, i32, ...) @sprintf(i8* %56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %57, i32 %59)
  br label %61

61:                                               ; preds = %55, %44
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %8, align 4
  %64 = sub nsw i32 %63, 1
  %65 = icmp slt i32 %62, %64
  br i1 %65, label %66, label %76

66:                                               ; preds = %61
  %67 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i64 0, i64 0
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* %9, align 4
  %70 = and i32 %69, 7
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* %8, align 4
  %73 = sub nsw i32 %72, 1
  %74 = and i32 %73, 7
  %75 = call i32 (i8*, i8*, i32, i32, ...) @sprintf(i8* %67, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %68, i32 %70, i32 %71, i32 %74)
  br label %76

76:                                               ; preds = %66, %61
  %77 = load i8*, i8** %4, align 8
  %78 = getelementptr inbounds [16 x i8], [16 x i8]* %12, i64 0, i64 0
  %79 = call i32 @strcat(i8* %77, i8* %78)
  %80 = load i32, i32* %8, align 4
  store i32 %80, i32* %9, align 4
  br label %81

81:                                               ; preds = %76, %41
  %82 = load i32, i32* %11, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load i32, i32* %8, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %9, align 4
  br label %87

87:                                               ; preds = %84, %81
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %8, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %8, align 4
  br label %23

91:                                               ; preds = %23
  %92 = load i8*, i8** %4, align 8
  %93 = call i32 @strlen(i8* %92)
  store i32 %93, i32* %10, align 4
  %94 = load i32, i32* %10, align 4
  %95 = icmp sgt i32 %94, 0
  br i1 %95, label %96, label %112

96:                                               ; preds = %91
  %97 = load i8*, i8** %4, align 8
  %98 = load i32, i32* %10, align 4
  %99 = sub nsw i32 %98, 1
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %97, i64 %100
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %103, 47
  br i1 %104, label %105, label %111

105:                                              ; preds = %96
  %106 = load i8*, i8** %4, align 8
  %107 = load i32, i32* %10, align 4
  %108 = sub nsw i32 %107, 1
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8, i8* %106, i64 %109
  store i8 0, i8* %110, align 1
  br label %111

111:                                              ; preds = %105, %96
  br label %112

112:                                              ; preds = %111, %91
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32, ...) #2

declare dso_local i32 @strcat(i8*, i8*) #2

declare dso_local i32 @strlen(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
