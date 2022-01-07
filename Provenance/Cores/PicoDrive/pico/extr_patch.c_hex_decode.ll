; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_patch.c_hex_decode.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_patch.c_hex_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.patch = type { i32, i32 }

@hex_chars = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.patch*)* @hex_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hex_decode(i8* %0, %struct.patch* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.patch*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.patch* %1, %struct.patch** %4, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %40, %2
  %8 = load i32, i32* %6, align 4
  %9 = icmp slt i32 %8, 6
  br i1 %9, label %10, label %43

10:                                               ; preds = %7
  %11 = load i8*, i8** @hex_chars, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, i8* %12, i64 %14
  %16 = load i8, i8* %15, align 1
  %17 = call i8* @strchr(i8* %11, i8 signext %16)
  store i8* %17, i8** %5, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %10
  %20 = load %struct.patch*, %struct.patch** %4, align 8
  %21 = getelementptr inbounds %struct.patch, %struct.patch* %20, i32 0, i32 1
  store i32 -1, i32* %21, align 4
  %22 = load %struct.patch*, %struct.patch** %4, align 8
  %23 = getelementptr inbounds %struct.patch, %struct.patch* %22, i32 0, i32 0
  store i32 -1, i32* %23, align 4
  br label %80

24:                                               ; preds = %10
  %25 = load %struct.patch*, %struct.patch** %4, align 8
  %26 = getelementptr inbounds %struct.patch, %struct.patch* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = shl i32 %27, 4
  %29 = sext i32 %28 to i64
  %30 = load i8*, i8** %5, align 8
  %31 = load i8*, i8** @hex_chars, align 8
  %32 = ptrtoint i8* %30 to i64
  %33 = ptrtoint i8* %31 to i64
  %34 = sub i64 %32, %33
  %35 = ashr i64 %34, 1
  %36 = or i64 %29, %35
  %37 = trunc i64 %36 to i32
  %38 = load %struct.patch*, %struct.patch** %4, align 8
  %39 = getelementptr inbounds %struct.patch, %struct.patch* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  br label %40

40:                                               ; preds = %24
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %6, align 4
  br label %7

43:                                               ; preds = %7
  store i32 6, i32* %6, align 4
  br label %44

44:                                               ; preds = %77, %43
  %45 = load i32, i32* %6, align 4
  %46 = icmp slt i32 %45, 10
  br i1 %46, label %47, label %80

47:                                               ; preds = %44
  %48 = load i8*, i8** @hex_chars, align 8
  %49 = load i8*, i8** %3, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = call i8* @strchr(i8* %48, i8 signext %53)
  store i8* %54, i8** %5, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %61, label %56

56:                                               ; preds = %47
  %57 = load %struct.patch*, %struct.patch** %4, align 8
  %58 = getelementptr inbounds %struct.patch, %struct.patch* %57, i32 0, i32 1
  store i32 -1, i32* %58, align 4
  %59 = load %struct.patch*, %struct.patch** %4, align 8
  %60 = getelementptr inbounds %struct.patch, %struct.patch* %59, i32 0, i32 0
  store i32 -1, i32* %60, align 4
  br label %80

61:                                               ; preds = %47
  %62 = load %struct.patch*, %struct.patch** %4, align 8
  %63 = getelementptr inbounds %struct.patch, %struct.patch* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = shl i32 %64, 4
  %66 = sext i32 %65 to i64
  %67 = load i8*, i8** %5, align 8
  %68 = load i8*, i8** @hex_chars, align 8
  %69 = ptrtoint i8* %67 to i64
  %70 = ptrtoint i8* %68 to i64
  %71 = sub i64 %69, %70
  %72 = ashr i64 %71, 1
  %73 = or i64 %66, %72
  %74 = trunc i64 %73 to i32
  %75 = load %struct.patch*, %struct.patch** %4, align 8
  %76 = getelementptr inbounds %struct.patch, %struct.patch* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  br label %77

77:                                               ; preds = %61
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %6, align 4
  br label %44

80:                                               ; preds = %19, %56, %44
  ret void
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
