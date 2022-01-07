; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libiosuhax/extr_iosuhax.c_IOSUHAX_FSA_Mount.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libiosuhax/extr_iosuhax.c_IOSUHAX_FSA_Mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@iosuhaxHandle = common dso_local global i64 0, align 8
@IOCTL_FSA_MOUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @IOSUHAX_FSA_Mount(i32 %0, i8* %1, i8* %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %19 = load i64, i64* @iosuhaxHandle, align 8
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %6
  %22 = load i64, i64* @iosuhaxHandle, align 8
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %7, align 4
  br label %140

24:                                               ; preds = %6
  %25 = load i8*, i8** %9, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load i8*, i8** %10, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i8*, i8** %12, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %30, %27, %24
  store i32 -1, i32* %7, align 4
  br label %140

34:                                               ; preds = %30
  store i32 6, i32* %14, align 4
  %35 = load i8*, i8** %9, align 8
  %36 = call i32 @strlen(i8* %35)
  %37 = sext i32 %36 to i64
  %38 = add i64 24, %37
  %39 = load i8*, i8** %10, align 8
  %40 = call i32 @strlen(i8* %39)
  %41 = sext i32 %40 to i64
  %42 = add i64 %38, %41
  %43 = load i32, i32* %13, align 4
  %44 = sext i32 %43 to i64
  %45 = add i64 %42, %44
  %46 = add i64 %45, 3
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %15, align 4
  %48 = load i32, i32* %15, align 4
  %49 = call i64 @memalign(i32 32, i32 %48)
  %50 = inttoptr i64 %49 to i32*
  store i32* %50, i32** %16, align 8
  %51 = load i32*, i32** %16, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %34
  store i32 -2, i32* %7, align 4
  br label %140

54:                                               ; preds = %34
  %55 = load i32*, i32** %16, align 8
  %56 = load i32, i32* %15, align 4
  %57 = call i32 @memset(i32* %55, i32 0, i32 %56)
  %58 = load i32, i32* %8, align 4
  %59 = load i32*, i32** %16, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  store i32 %58, i32* %60, align 4
  %61 = load i32*, i32** %16, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  store i32 24, i32* %62, align 4
  %63 = load i32*, i32** %16, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = load i8*, i8** %9, align 8
  %67 = call i32 @strlen(i8* %66)
  %68 = add nsw i32 %65, %67
  %69 = add nsw i32 %68, 1
  %70 = load i32*, i32** %16, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 2
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* %11, align 4
  %73 = load i32*, i32** %16, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 3
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* %13, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %54
  %78 = load i32*, i32** %16, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 2
  %80 = load i32, i32* %79, align 4
  %81 = load i8*, i8** %10, align 8
  %82 = call i32 @strlen(i8* %81)
  %83 = add nsw i32 %80, %82
  %84 = add nsw i32 %83, 1
  br label %86

85:                                               ; preds = %54
  br label %86

86:                                               ; preds = %85, %77
  %87 = phi i32 [ %84, %77 ], [ 0, %85 ]
  %88 = load i32*, i32** %16, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 4
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* %13, align 4
  %91 = load i32*, i32** %16, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 5
  store i32 %90, i32* %92, align 4
  %93 = load i32*, i32** %16, align 8
  %94 = bitcast i32* %93 to i8*
  %95 = load i32*, i32** %16, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 1
  %97 = load i32, i32* %96, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %94, i64 %98
  %100 = load i8*, i8** %9, align 8
  %101 = call i32 @strcpy(i8* %99, i8* %100)
  %102 = load i32*, i32** %16, align 8
  %103 = bitcast i32* %102 to i8*
  %104 = load i32*, i32** %16, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 2
  %106 = load i32, i32* %105, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %103, i64 %107
  %109 = load i8*, i8** %10, align 8
  %110 = call i32 @strcpy(i8* %108, i8* %109)
  %111 = load i32, i32* %13, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %124

113:                                              ; preds = %86
  %114 = load i32*, i32** %16, align 8
  %115 = bitcast i32* %114 to i8*
  %116 = load i32*, i32** %16, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 4
  %118 = load i32, i32* %117, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8, i8* %115, i64 %119
  %121 = load i8*, i8** %12, align 8
  %122 = load i32, i32* %13, align 4
  %123 = call i32 @memcpy(i8* %120, i8* %121, i32 %122)
  br label %124

124:                                              ; preds = %113, %86
  %125 = load i64, i64* @iosuhaxHandle, align 8
  %126 = load i32, i32* @IOCTL_FSA_MOUNT, align 4
  %127 = load i32*, i32** %16, align 8
  %128 = load i32, i32* %15, align 4
  %129 = call i32 @IOS_Ioctl(i64 %125, i32 %126, i32* %127, i32 %128, i32* %17, i32 4)
  store i32 %129, i32* %18, align 4
  %130 = load i32, i32* %18, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %124
  %133 = load i32*, i32** %16, align 8
  %134 = call i32 @free(i32* %133)
  %135 = load i32, i32* %18, align 4
  store i32 %135, i32* %7, align 4
  br label %140

136:                                              ; preds = %124
  %137 = load i32*, i32** %16, align 8
  %138 = call i32 @free(i32* %137)
  %139 = load i32, i32* %17, align 4
  store i32 %139, i32* %7, align 4
  br label %140

140:                                              ; preds = %136, %132, %53, %33, %21
  %141 = load i32, i32* %7, align 4
  ret i32 %141
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @memalign(i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @IOS_Ioctl(i64, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
