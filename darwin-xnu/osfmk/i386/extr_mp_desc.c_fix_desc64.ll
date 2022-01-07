; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_mp_desc.c_fix_desc64.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_mp_desc.c_fix_desc64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fake_descriptor64 = type { i32, i32, i32, i32 }
%union.anon = type { %struct.real_descriptor64 }
%struct.real_descriptor64 = type { i32, i32, i32, i32, i8*, i8*, i8*, i8* }
%struct.real_gate64 = type { i32, i32, i32, i8*, i8*, i8* }

@ACC_TYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fix_desc64(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fake_descriptor64*, align 8
  %6 = alloca %union.anon, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.fake_descriptor64*
  store %struct.fake_descriptor64* %9, %struct.fake_descriptor64** %5, align 8
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %129, %2
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %134

14:                                               ; preds = %10
  %15 = bitcast %union.anon* %6 to i8*
  %16 = call i32 @bzero(i8* %15, i32 48)
  %17 = load %struct.fake_descriptor64*, %struct.fake_descriptor64** %5, align 8
  %18 = getelementptr inbounds %struct.fake_descriptor64, %struct.fake_descriptor64* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @ACC_TYPE, align 4
  %21 = and i32 %19, %20
  switch i32 %21, label %66 [
    i32 0, label %22
    i32 130, label %23
    i32 129, label %23
    i32 128, label %23
  ]

22:                                               ; preds = %14
  br label %124

23:                                               ; preds = %14, %14, %14
  %24 = load %struct.fake_descriptor64*, %struct.fake_descriptor64** %5, align 8
  %25 = getelementptr inbounds %struct.fake_descriptor64, %struct.fake_descriptor64* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, 65535
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to i8*
  %30 = bitcast %union.anon* %6 to %struct.real_gate64*
  %31 = getelementptr inbounds %struct.real_gate64, %struct.real_gate64* %30, i32 0, i32 5
  store i8* %29, i8** %31, align 8
  %32 = load %struct.fake_descriptor64*, %struct.fake_descriptor64** %5, align 8
  %33 = getelementptr inbounds %struct.fake_descriptor64, %struct.fake_descriptor64* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, 65535
  %36 = bitcast %union.anon* %6 to %struct.real_gate64*
  %37 = getelementptr inbounds %struct.real_gate64, %struct.real_gate64* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.fake_descriptor64*, %struct.fake_descriptor64** %5, align 8
  %39 = getelementptr inbounds %struct.fake_descriptor64, %struct.fake_descriptor64* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, 7
  %42 = bitcast %union.anon* %6 to %struct.real_gate64*
  %43 = getelementptr inbounds %struct.real_gate64, %struct.real_gate64* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.fake_descriptor64*, %struct.fake_descriptor64** %5, align 8
  %45 = getelementptr inbounds %struct.fake_descriptor64, %struct.fake_descriptor64* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = bitcast %union.anon* %6 to %struct.real_gate64*
  %48 = getelementptr inbounds %struct.real_gate64, %struct.real_gate64* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  %49 = load %struct.fake_descriptor64*, %struct.fake_descriptor64** %5, align 8
  %50 = getelementptr inbounds %struct.fake_descriptor64, %struct.fake_descriptor64* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = ashr i32 %51, 16
  %53 = and i32 %52, 65535
  %54 = sext i32 %53 to i64
  %55 = inttoptr i64 %54 to i8*
  %56 = bitcast %union.anon* %6 to %struct.real_gate64*
  %57 = getelementptr inbounds %struct.real_gate64, %struct.real_gate64* %56, i32 0, i32 4
  store i8* %55, i8** %57, align 8
  %58 = load %struct.fake_descriptor64*, %struct.fake_descriptor64** %5, align 8
  %59 = getelementptr inbounds %struct.fake_descriptor64, %struct.fake_descriptor64* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = ashr i32 %60, 32
  %62 = sext i32 %61 to i64
  %63 = inttoptr i64 %62 to i8*
  %64 = bitcast %union.anon* %6 to %struct.real_gate64*
  %65 = getelementptr inbounds %struct.real_gate64, %struct.real_gate64* %64, i32 0, i32 3
  store i8* %63, i8** %65, align 8
  br label %124

66:                                               ; preds = %14
  %67 = load %struct.fake_descriptor64*, %struct.fake_descriptor64** %5, align 8
  %68 = getelementptr inbounds %struct.fake_descriptor64, %struct.fake_descriptor64* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, 65535
  %71 = bitcast %union.anon* %6 to %struct.real_descriptor64*
  %72 = getelementptr inbounds %struct.real_descriptor64, %struct.real_descriptor64* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load %struct.fake_descriptor64*, %struct.fake_descriptor64** %5, align 8
  %74 = getelementptr inbounds %struct.fake_descriptor64, %struct.fake_descriptor64* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %75, 65535
  %77 = sext i32 %76 to i64
  %78 = inttoptr i64 %77 to i8*
  %79 = bitcast %union.anon* %6 to %struct.real_descriptor64*
  %80 = getelementptr inbounds %struct.real_descriptor64, %struct.real_descriptor64* %79, i32 0, i32 7
  store i8* %78, i8** %80, align 8
  %81 = load %struct.fake_descriptor64*, %struct.fake_descriptor64** %5, align 8
  %82 = getelementptr inbounds %struct.fake_descriptor64, %struct.fake_descriptor64* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = ashr i32 %83, 16
  %85 = and i32 %84, 255
  %86 = sext i32 %85 to i64
  %87 = inttoptr i64 %86 to i8*
  %88 = bitcast %union.anon* %6 to %struct.real_descriptor64*
  %89 = getelementptr inbounds %struct.real_descriptor64, %struct.real_descriptor64* %88, i32 0, i32 6
  store i8* %87, i8** %89, align 8
  %90 = load %struct.fake_descriptor64*, %struct.fake_descriptor64** %5, align 8
  %91 = getelementptr inbounds %struct.fake_descriptor64, %struct.fake_descriptor64* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = bitcast %union.anon* %6 to %struct.real_descriptor64*
  %94 = getelementptr inbounds %struct.real_descriptor64, %struct.real_descriptor64* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = load %struct.fake_descriptor64*, %struct.fake_descriptor64** %5, align 8
  %96 = getelementptr inbounds %struct.fake_descriptor64, %struct.fake_descriptor64* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = ashr i32 %97, 16
  %99 = and i32 %98, 255
  %100 = bitcast %union.anon* %6 to %struct.real_descriptor64*
  %101 = getelementptr inbounds %struct.real_descriptor64, %struct.real_descriptor64* %100, i32 0, i32 2
  store i32 %99, i32* %101, align 8
  %102 = load %struct.fake_descriptor64*, %struct.fake_descriptor64** %5, align 8
  %103 = getelementptr inbounds %struct.fake_descriptor64, %struct.fake_descriptor64* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = bitcast %union.anon* %6 to %struct.real_descriptor64*
  %106 = getelementptr inbounds %struct.real_descriptor64, %struct.real_descriptor64* %105, i32 0, i32 3
  store i32 %104, i32* %106, align 4
  %107 = load %struct.fake_descriptor64*, %struct.fake_descriptor64** %5, align 8
  %108 = getelementptr inbounds %struct.fake_descriptor64, %struct.fake_descriptor64* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = ashr i32 %109, 24
  %111 = and i32 %110, 255
  %112 = sext i32 %111 to i64
  %113 = inttoptr i64 %112 to i8*
  %114 = bitcast %union.anon* %6 to %struct.real_descriptor64*
  %115 = getelementptr inbounds %struct.real_descriptor64, %struct.real_descriptor64* %114, i32 0, i32 5
  store i8* %113, i8** %115, align 8
  %116 = load %struct.fake_descriptor64*, %struct.fake_descriptor64** %5, align 8
  %117 = getelementptr inbounds %struct.fake_descriptor64, %struct.fake_descriptor64* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = ashr i32 %118, 32
  %120 = sext i32 %119 to i64
  %121 = inttoptr i64 %120 to i8*
  %122 = bitcast %union.anon* %6 to %struct.real_descriptor64*
  %123 = getelementptr inbounds %struct.real_descriptor64, %struct.real_descriptor64* %122, i32 0, i32 4
  store i8* %121, i8** %123, align 8
  br label %124

124:                                              ; preds = %66, %23, %22
  %125 = bitcast %union.anon* %6 to i8*
  %126 = load %struct.fake_descriptor64*, %struct.fake_descriptor64** %5, align 8
  %127 = bitcast %struct.fake_descriptor64* %126 to i8*
  %128 = call i32 @bcopy(i8* %125, i8* %127, i32 48)
  br label %129

129:                                              ; preds = %124
  %130 = load i32, i32* %7, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %7, align 4
  %132 = load %struct.fake_descriptor64*, %struct.fake_descriptor64** %5, align 8
  %133 = getelementptr inbounds %struct.fake_descriptor64, %struct.fake_descriptor64* %132, i32 1
  store %struct.fake_descriptor64* %133, %struct.fake_descriptor64** %5, align 8
  br label %10

134:                                              ; preds = %10
  ret void
}

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i32 @bcopy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
