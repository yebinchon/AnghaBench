; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_deccc608sub.c_write_char.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_deccc608sub.c_write_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_write = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i64, i32, i32 }
%struct.eia608_screen = type { i8**, i32*, i32, i64, i32**, i32** }

@MODE_TEXT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8, %struct.s_write*)* @write_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_char(i8 zeroext %0, %struct.s_write* %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.s_write*, align 8
  %5 = alloca %struct.eia608_screen*, align 8
  store i8 %0, i8* %3, align 1
  store %struct.s_write* %1, %struct.s_write** %4, align 8
  %6 = load %struct.s_write*, %struct.s_write** %4, align 8
  %7 = getelementptr inbounds %struct.s_write, %struct.s_write* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @MODE_TEXT, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %106

13:                                               ; preds = %2
  %14 = load %struct.s_write*, %struct.s_write** %4, align 8
  %15 = call %struct.eia608_screen* @get_writing_buffer(%struct.s_write* %14)
  store %struct.eia608_screen* %15, %struct.eia608_screen** %5, align 8
  %16 = load %struct.eia608_screen*, %struct.eia608_screen** %5, align 8
  %17 = icmp ne %struct.eia608_screen* %16, null
  br i1 %17, label %18, label %105

18:                                               ; preds = %13
  %19 = load i8, i8* %3, align 1
  %20 = load %struct.eia608_screen*, %struct.eia608_screen** %5, align 8
  %21 = getelementptr inbounds %struct.eia608_screen, %struct.eia608_screen* %20, i32 0, i32 0
  %22 = load i8**, i8*** %21, align 8
  %23 = load %struct.s_write*, %struct.s_write** %4, align 8
  %24 = getelementptr inbounds %struct.s_write, %struct.s_write* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds i8*, i8** %22, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = load %struct.s_write*, %struct.s_write** %4, align 8
  %31 = getelementptr inbounds %struct.s_write, %struct.s_write* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds i8, i8* %29, i64 %34
  store i8 %19, i8* %35, align 1
  %36 = load %struct.s_write*, %struct.s_write** %4, align 8
  %37 = getelementptr inbounds %struct.s_write, %struct.s_write* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.eia608_screen*, %struct.eia608_screen** %5, align 8
  %42 = getelementptr inbounds %struct.eia608_screen, %struct.eia608_screen* %41, i32 0, i32 5
  %43 = load i32**, i32*** %42, align 8
  %44 = load %struct.s_write*, %struct.s_write** %4, align 8
  %45 = getelementptr inbounds %struct.s_write, %struct.s_write* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds i32*, i32** %43, i64 %48
  %50 = load i32*, i32** %49, align 8
  %51 = load %struct.s_write*, %struct.s_write** %4, align 8
  %52 = getelementptr inbounds %struct.s_write, %struct.s_write* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds i32, i32* %50, i64 %55
  store i32 %40, i32* %56, align 4
  %57 = load %struct.s_write*, %struct.s_write** %4, align 8
  %58 = getelementptr inbounds %struct.s_write, %struct.s_write* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.eia608_screen*, %struct.eia608_screen** %5, align 8
  %63 = getelementptr inbounds %struct.eia608_screen, %struct.eia608_screen* %62, i32 0, i32 4
  %64 = load i32**, i32*** %63, align 8
  %65 = load %struct.s_write*, %struct.s_write** %4, align 8
  %66 = getelementptr inbounds %struct.s_write, %struct.s_write* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds i32*, i32** %64, i64 %69
  %71 = load i32*, i32** %70, align 8
  %72 = load %struct.s_write*, %struct.s_write** %4, align 8
  %73 = getelementptr inbounds %struct.s_write, %struct.s_write* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds i32, i32* %71, i64 %76
  store i32 %61, i32* %77, align 4
  %78 = load %struct.eia608_screen*, %struct.eia608_screen** %5, align 8
  %79 = getelementptr inbounds %struct.eia608_screen, %struct.eia608_screen* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = load %struct.s_write*, %struct.s_write** %4, align 8
  %82 = getelementptr inbounds %struct.s_write, %struct.s_write* %81, i32 0, i32 0
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds i32, i32* %80, i64 %85
  store i32 1, i32* %86, align 4
  %87 = load %struct.eia608_screen*, %struct.eia608_screen** %5, align 8
  %88 = getelementptr inbounds %struct.eia608_screen, %struct.eia608_screen* %87, i32 0, i32 3
  store i64 0, i64* %88, align 8
  %89 = load %struct.s_write*, %struct.s_write** %4, align 8
  %90 = getelementptr inbounds %struct.s_write, %struct.s_write* %89, i32 0, i32 0
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = icmp ult i64 %93, 31
  br i1 %94, label %95, label %102

95:                                               ; preds = %18
  %96 = load %struct.s_write*, %struct.s_write** %4, align 8
  %97 = getelementptr inbounds %struct.s_write, %struct.s_write* %96, i32 0, i32 0
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %99, align 8
  br label %102

102:                                              ; preds = %95, %18
  %103 = load %struct.eia608_screen*, %struct.eia608_screen** %5, align 8
  %104 = getelementptr inbounds %struct.eia608_screen, %struct.eia608_screen* %103, i32 0, i32 2
  store i32 1, i32* %104, align 8
  br label %105

105:                                              ; preds = %102, %13
  br label %106

106:                                              ; preds = %105, %2
  ret void
}

declare dso_local %struct.eia608_screen* @get_writing_buffer(%struct.s_write*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
