; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_patch.c_genie_decode.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_patch.c_genie_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.patch = type { i32, i32 }

@genie_chars = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.patch*)* @genie_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @genie_decode(i8* %0, %struct.patch* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.patch*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.patch* %1, %struct.patch** %4, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %123, %2
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 8
  br i1 %10, label %11, label %126

11:                                               ; preds = %8
  %12 = load i8*, i8** @genie_chars, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, i8* %13, i64 %15
  %17 = load i8, i8* %16, align 1
  %18 = call i8* @strchr(i8* %12, i8 signext %17)
  store i8* %18, i8** %7, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %11
  %21 = load %struct.patch*, %struct.patch** %4, align 8
  %22 = getelementptr inbounds %struct.patch, %struct.patch* %21, i32 0, i32 0
  store i32 -1, i32* %22, align 4
  %23 = load %struct.patch*, %struct.patch** %4, align 8
  %24 = getelementptr inbounds %struct.patch, %struct.patch* %23, i32 0, i32 1
  store i32 -1, i32* %24, align 4
  br label %127

25:                                               ; preds = %11
  %26 = load i8*, i8** %7, align 8
  %27 = load i8*, i8** @genie_chars, align 8
  %28 = ptrtoint i8* %26 to i64
  %29 = ptrtoint i8* %27 to i64
  %30 = sub i64 %28, %29
  %31 = ashr i64 %30, 1
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %5, align 4
  switch i32 %33, label %122 [
    i32 0, label %34
    i32 1, label %41
    i32 2, label %55
    i32 3, label %62
    i32 4, label %74
    i32 5, label %89
    i32 6, label %101
    i32 7, label %116
  ]

34:                                               ; preds = %25
  %35 = load i32, i32* %6, align 4
  %36 = shl i32 %35, 3
  %37 = load %struct.patch*, %struct.patch** %4, align 8
  %38 = getelementptr inbounds %struct.patch, %struct.patch* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 4
  br label %122

41:                                               ; preds = %25
  %42 = load i32, i32* %6, align 4
  %43 = ashr i32 %42, 2
  %44 = load %struct.patch*, %struct.patch** %4, align 8
  %45 = getelementptr inbounds %struct.patch, %struct.patch* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 4
  %48 = load i32, i32* %6, align 4
  %49 = and i32 %48, 3
  %50 = shl i32 %49, 14
  %51 = load %struct.patch*, %struct.patch** %4, align 8
  %52 = getelementptr inbounds %struct.patch, %struct.patch* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  br label %122

55:                                               ; preds = %25
  %56 = load i32, i32* %6, align 4
  %57 = shl i32 %56, 9
  %58 = load %struct.patch*, %struct.patch** %4, align 8
  %59 = getelementptr inbounds %struct.patch, %struct.patch* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 4
  br label %122

62:                                               ; preds = %25
  %63 = load i32, i32* %6, align 4
  %64 = and i32 %63, 15
  %65 = shl i32 %64, 20
  %66 = load i32, i32* %6, align 4
  %67 = ashr i32 %66, 4
  %68 = shl i32 %67, 8
  %69 = or i32 %65, %68
  %70 = load %struct.patch*, %struct.patch** %4, align 8
  %71 = getelementptr inbounds %struct.patch, %struct.patch* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 4
  br label %122

74:                                               ; preds = %25
  %75 = load i32, i32* %6, align 4
  %76 = and i32 %75, 1
  %77 = shl i32 %76, 12
  %78 = load %struct.patch*, %struct.patch** %4, align 8
  %79 = getelementptr inbounds %struct.patch, %struct.patch* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 4
  %82 = load i32, i32* %6, align 4
  %83 = ashr i32 %82, 1
  %84 = shl i32 %83, 16
  %85 = load %struct.patch*, %struct.patch** %4, align 8
  %86 = getelementptr inbounds %struct.patch, %struct.patch* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 4
  br label %122

89:                                               ; preds = %25
  %90 = load i32, i32* %6, align 4
  %91 = and i32 %90, 1
  %92 = shl i32 %91, 15
  %93 = load i32, i32* %6, align 4
  %94 = ashr i32 %93, 1
  %95 = shl i32 %94, 8
  %96 = or i32 %92, %95
  %97 = load %struct.patch*, %struct.patch** %4, align 8
  %98 = getelementptr inbounds %struct.patch, %struct.patch* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 4
  br label %122

101:                                              ; preds = %25
  %102 = load i32, i32* %6, align 4
  %103 = ashr i32 %102, 3
  %104 = shl i32 %103, 13
  %105 = load %struct.patch*, %struct.patch** %4, align 8
  %106 = getelementptr inbounds %struct.patch, %struct.patch* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %107, %104
  store i32 %108, i32* %106, align 4
  %109 = load i32, i32* %6, align 4
  %110 = and i32 %109, 7
  %111 = shl i32 %110, 5
  %112 = load %struct.patch*, %struct.patch** %4, align 8
  %113 = getelementptr inbounds %struct.patch, %struct.patch* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = or i32 %114, %111
  store i32 %115, i32* %113, align 4
  br label %122

116:                                              ; preds = %25
  %117 = load i32, i32* %6, align 4
  %118 = load %struct.patch*, %struct.patch** %4, align 8
  %119 = getelementptr inbounds %struct.patch, %struct.patch* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = or i32 %120, %117
  store i32 %121, i32* %119, align 4
  br label %122

122:                                              ; preds = %25, %116, %101, %89, %74, %62, %55, %41, %34
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %5, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %5, align 4
  br label %8

126:                                              ; preds = %8
  br label %127

127:                                              ; preds = %126, %20
  ret void
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
