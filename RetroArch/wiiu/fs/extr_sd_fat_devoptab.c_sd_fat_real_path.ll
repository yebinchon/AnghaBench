; ModuleID = '/home/carl/AnghaBench/RetroArch/wiiu/fs/extr_sd_fat_devoptab.c_sd_fat_real_path.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wiiu/fs/extr_sd_fat_devoptab.c_sd_fat_real_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, %struct.TYPE_3__*)* @sd_fat_real_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @sd_fat_real_path(i8* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %48

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = call i8* @strchr(i8* %12, i8 signext 58)
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load i8*, i8** %4, align 8
  %17 = call i8* @strchr(i8* %16, i8 signext 58)
  %18 = getelementptr inbounds i8, i8* %17, i64 1
  store i8* %18, i8** %4, align 8
  br label %19

19:                                               ; preds = %15, %11
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @strlen(i8* %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 @strlen(i8* %25)
  %27 = add nsw i32 %24, %26
  %28 = add nsw i32 %27, 1
  %29 = call i64 @malloc(i32 %28)
  %30 = inttoptr i64 %29 to i8*
  store i8* %30, i8** %7, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %46

33:                                               ; preds = %19
  %34 = load i8*, i8** %7, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @strcpy(i8* %34, i8* %37)
  %39 = load i8*, i8** %7, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = load i8*, i8** %4, align 8
  %44 = call i32 @strcpy(i8* %42, i8* %43)
  %45 = load i8*, i8** %7, align 8
  store i8* %45, i8** %3, align 8
  br label %48

46:                                               ; preds = %19
  %47 = load i8*, i8** %7, align 8
  store i8* %47, i8** %3, align 8
  br label %48

48:                                               ; preds = %46, %33, %10
  %49 = load i8*, i8** %3, align 8
  ret i8* %49
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
