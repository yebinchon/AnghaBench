; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_pad.c_SPEC0_MakeStatus.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_pad.c_SPEC0_MakeStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i8*, i8*, i8*, i8*, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, %struct.TYPE_3__*)* @SPEC0_MakeStatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SPEC0_MakeStatus(i32 %0, i32* %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %6, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  store i32 0, i32* %8, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  %12 = and i32 %11, 524288
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = or i32 %17, 256
  store i32 %18, i32* %16, align 8
  br label %19

19:                                               ; preds = %14, %3
  %20 = load i32*, i32** %5, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, 2097152
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %19
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = or i32 %28, 512
  store i32 %29, i32* %27, align 8
  br label %30

30:                                               ; preds = %25, %19
  %31 = load i32*, i32** %5, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, 16777216
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = or i32 %39, 1024
  store i32 %40, i32* %38, align 8
  br label %41

41:                                               ; preds = %36, %30
  %42 = load i32*, i32** %5, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, 65536
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %41
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, 2048
  store i32 %51, i32* %49, align 8
  br label %52

52:                                               ; preds = %47, %41
  %53 = load i32*, i32** %5, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, 1048576
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %52
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %61, 4096
  store i32 %62, i32* %60, align 8
  br label %63

63:                                               ; preds = %58, %52
  %64 = load i32*, i32** %5, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  %66 = load i32, i32* %65, align 4
  %67 = ashr i32 %66, 16
  %68 = sext i32 %67 to i64
  %69 = inttoptr i64 %68 to i8*
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 6
  store i8* %69, i8** %71, align 8
  %72 = load i32*, i32** %5, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = ashr i32 %74, 24
  %76 = sext i32 %75 to i64
  %77 = inttoptr i64 %76 to i8*
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 5
  store i8* %77, i8** %79, align 8
  %80 = load i32*, i32** %5, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  %82 = load i32, i32* %81, align 4
  %83 = sext i32 %82 to i64
  %84 = inttoptr i64 %83 to i8*
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 4
  store i8* %84, i8** %86, align 8
  %87 = load i32*, i32** %5, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 1
  %89 = load i32, i32* %88, align 4
  %90 = ashr i32 %89, 8
  %91 = sext i32 %90 to i64
  %92 = inttoptr i64 %91 to i8*
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 3
  store i8* %92, i8** %94, align 8
  %95 = load i32*, i32** %5, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @_SHIFTR(i32 %97, i32 8, i32 8)
  %99 = inttoptr i64 %98 to i8*
  %100 = ptrtoint i8* %99 to i32
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  %103 = load i32*, i32** %5, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 0
  %105 = load i32, i32* %104, align 4
  %106 = and i32 %105, 255
  %107 = sext i32 %106 to i64
  %108 = inttoptr i64 %107 to i8*
  %109 = ptrtoint i8* %108 to i32
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 2
  store i32 %109, i32* %111, align 8
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 8
  store i64 0, i64* %113, align 8
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 7
  store i64 0, i64* %115, align 8
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = icmp sge i32 %118, 170
  br i1 %119, label %120, label %125

120:                                              ; preds = %63
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = or i32 %123, 64
  store i32 %124, i32* %122, align 8
  br label %125

125:                                              ; preds = %120, %63
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = icmp sge i32 %128, 170
  br i1 %129, label %130, label %135

130:                                              ; preds = %125
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = or i32 %133, 32
  store i32 %134, i32* %132, align 8
  br label %135

135:                                              ; preds = %130, %125
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 6
  %138 = load i8*, i8** %137, align 8
  %139 = getelementptr i8, i8* %138, i64 -128
  store i8* %139, i8** %137, align 8
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 5
  %142 = load i8*, i8** %141, align 8
  %143 = getelementptr i8, i8* %142, i64 -128
  store i8* %143, i8** %141, align 8
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 4
  %146 = load i8*, i8** %145, align 8
  %147 = getelementptr i8, i8* %146, i64 -128
  store i8* %147, i8** %145, align 8
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 3
  %150 = load i8*, i8** %149, align 8
  %151 = getelementptr i8, i8* %150, i64 -128
  store i8* %151, i8** %149, align 8
  ret void
}

declare dso_local i64 @_SHIFTR(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
