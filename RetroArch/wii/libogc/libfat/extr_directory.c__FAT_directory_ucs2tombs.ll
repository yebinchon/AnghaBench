; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libfat/extr_directory.c__FAT_directory_ucs2tombs.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libfat/extr_directory.c__FAT_directory_ucs2tombs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@MB_CUR_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i8*, i64)* @_FAT_directory_ucs2tombs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @_FAT_directory_ucs2tombs(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_3__, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = bitcast %struct.TYPE_3__* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %15, i8 0, i64 4, i1 false)
  store i64 0, i64* %9, align 8
  %16 = load i32, i32* @MB_CUR_MAX, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %11, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %12, align 8
  br label %20

20:                                               ; preds = %72, %3
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* %7, align 8
  %23 = sub i64 %22, 1
  %24 = icmp ult i64 %21, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load i8*, i8** %6, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 0
  br label %30

30:                                               ; preds = %25, %20
  %31 = phi i1 [ false, %20 ], [ %29, %25 ]
  br i1 %31, label %32, label %73

32:                                               ; preds = %30
  %33 = load i8*, i8** %6, align 8
  %34 = load i8, i8* %33, align 1
  %35 = call i32 @wcrtomb(i8* %19, i8 signext %34, %struct.TYPE_3__* %8)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store i64 -1, i64* %4, align 8
  store i32 1, i32* %14, align 4
  br label %76

39:                                               ; preds = %32
  %40 = load i64, i64* %9, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = add i64 %40, %42
  %44 = load i64, i64* %7, align 8
  %45 = icmp ult i64 %43, %44
  br i1 %45, label %46, label %71

46:                                               ; preds = %39
  %47 = load i32, i32* %10, align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %71

49:                                               ; preds = %46
  store i32 0, i32* %13, align 4
  br label %50

50:                                               ; preds = %61, %49
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %64

54:                                               ; preds = %50
  %55 = load i32, i32* %13, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %19, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = load i8*, i8** %5, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %5, align 8
  store i8 %58, i8* %59, align 1
  br label %61

61:                                               ; preds = %54
  %62 = load i32, i32* %13, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %13, align 4
  br label %50

64:                                               ; preds = %50
  %65 = load i8*, i8** %6, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %6, align 8
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = load i64, i64* %9, align 8
  %70 = add i64 %69, %68
  store i64 %70, i64* %9, align 8
  br label %72

71:                                               ; preds = %46, %39
  br label %73

72:                                               ; preds = %64
  br label %20

73:                                               ; preds = %71, %30
  %74 = load i8*, i8** %5, align 8
  store i8 0, i8* %74, align 1
  %75 = load i64, i64* %9, align 8
  store i64 %75, i64* %4, align 8
  store i32 1, i32* %14, align 4
  br label %76

76:                                               ; preds = %73, %38
  %77 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %77)
  %78 = load i64, i64* %4, align 8
  ret i64 %78
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @wcrtomb(i8*, i8 signext, %struct.TYPE_3__*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
