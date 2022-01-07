; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/vpninstall/extr_vpninstall.c_ViExtractResource.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/vpninstall/extr_vpninstall.c_ViExtractResource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LOAD_LIBRARY_AS_DATAFILE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ViExtractResource(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %3
  %17 = load i8*, i8** %6, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load i8*, i8** %7, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %19, %16, %3
  store i32* null, i32** %4, align 8
  br label %68

23:                                               ; preds = %19
  %24 = load i8*, i8** %5, align 8
  %25 = load i32, i32* @LOAD_LIBRARY_AS_DATAFILE, align 4
  %26 = call i32* @LoadLibraryExA(i8* %24, i32* null, i32 %25)
  store i32* %26, i32** %8, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i32* null, i32** %4, align 8
  br label %68

30:                                               ; preds = %23
  %31 = load i32*, i32** %8, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = call i32* @FindResourceA(i32* %31, i8* %32, i8* %33)
  store i32* %34, i32** %9, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load i32*, i32** %8, align 8
  %39 = call i32 @FreeLibrary(i32* %38)
  store i32* null, i32** %4, align 8
  br label %68

40:                                               ; preds = %30
  %41 = load i32*, i32** %8, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = call i32* @LoadResource(i32* %41, i32* %42)
  store i32* %43, i32** %10, align 8
  %44 = load i32*, i32** %10, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32*, i32** %8, align 8
  %48 = call i32 @FreeLibrary(i32* %47)
  store i32* null, i32** %4, align 8
  br label %68

49:                                               ; preds = %40
  %50 = load i32*, i32** %8, align 8
  %51 = load i32*, i32** %9, align 8
  %52 = call i32 @SizeofResource(i32* %50, i32* %51)
  store i32 %52, i32* %11, align 4
  %53 = load i32*, i32** %10, align 8
  %54 = call i64 @LockResource(i32* %53)
  %55 = inttoptr i64 %54 to i8*
  store i8* %55, i8** %12, align 8
  %56 = call i32* (...) @NewBuf()
  store i32* %56, i32** %13, align 8
  %57 = load i32*, i32** %13, align 8
  %58 = load i8*, i8** %12, align 8
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @WriteBuf(i32* %57, i8* %58, i32 %59)
  %61 = load i32*, i32** %10, align 8
  %62 = call i32 @FreeResource(i32* %61)
  %63 = load i32*, i32** %8, align 8
  %64 = call i32 @FreeLibrary(i32* %63)
  %65 = load i32*, i32** %13, align 8
  %66 = call i32 @SeekBuf(i32* %65, i32 0, i32 0)
  %67 = load i32*, i32** %13, align 8
  store i32* %67, i32** %4, align 8
  br label %68

68:                                               ; preds = %49, %46, %37, %29, %22
  %69 = load i32*, i32** %4, align 8
  ret i32* %69
}

declare dso_local i32* @LoadLibraryExA(i8*, i32*, i32) #1

declare dso_local i32* @FindResourceA(i32*, i8*, i8*) #1

declare dso_local i32 @FreeLibrary(i32*) #1

declare dso_local i32* @LoadResource(i32*, i32*) #1

declare dso_local i32 @SizeofResource(i32*, i32*) #1

declare dso_local i64 @LockResource(i32*) #1

declare dso_local i32* @NewBuf(...) #1

declare dso_local i32 @WriteBuf(i32*, i8*, i32) #1

declare dso_local i32 @FreeResource(i32*) #1

declare dso_local i32 @SeekBuf(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
