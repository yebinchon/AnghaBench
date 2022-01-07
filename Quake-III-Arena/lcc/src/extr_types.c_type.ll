; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_types.c_type.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_types.c_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.entry = type { %struct.TYPE_4__, %struct.entry* }
%struct.TYPE_4__ = type { i32, i64, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8* }

@typetable = common dso_local global %struct.entry** null, align 8
@FUNCTION = common dso_local global i32 0, align 4
@ARRAY = common dso_local global i32 0, align 4
@PERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i64, i32, i32, i8*)* @type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @type(i32 %0, i64 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.entry*, align 8
  store i32 %0, i32* %7, align 4
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = load i64, i64* %8, align 8
  %17 = lshr i64 %16, 3
  %18 = xor i64 %15, %17
  %19 = load %struct.entry**, %struct.entry*** @typetable, align 8
  %20 = call i32 @NELEMS(%struct.entry** %19)
  %21 = sub nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = and i64 %18, %22
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @FUNCTION, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %90

28:                                               ; preds = %5
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @ARRAY, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* %9, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %90

35:                                               ; preds = %32, %28
  %36 = load %struct.entry**, %struct.entry*** @typetable, align 8
  %37 = load i32, i32* %12, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.entry*, %struct.entry** %36, i64 %38
  %40 = load %struct.entry*, %struct.entry** %39, align 8
  store %struct.entry* %40, %struct.entry** %13, align 8
  br label %41

41:                                               ; preds = %85, %35
  %42 = load %struct.entry*, %struct.entry** %13, align 8
  %43 = icmp ne %struct.entry* %42, null
  br i1 %43, label %44, label %89

44:                                               ; preds = %41
  %45 = load %struct.entry*, %struct.entry** %13, align 8
  %46 = getelementptr inbounds %struct.entry, %struct.entry* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %84

51:                                               ; preds = %44
  %52 = load %struct.entry*, %struct.entry** %13, align 8
  %53 = getelementptr inbounds %struct.entry, %struct.entry* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %8, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %84

58:                                               ; preds = %51
  %59 = load %struct.entry*, %struct.entry** %13, align 8
  %60 = getelementptr inbounds %struct.entry, %struct.entry* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %9, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %84

65:                                               ; preds = %58
  %66 = load %struct.entry*, %struct.entry** %13, align 8
  %67 = getelementptr inbounds %struct.entry, %struct.entry* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %10, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %84

72:                                               ; preds = %65
  %73 = load %struct.entry*, %struct.entry** %13, align 8
  %74 = getelementptr inbounds %struct.entry, %struct.entry* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 4
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = load i8*, i8** %11, align 8
  %79 = icmp eq i8* %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %72
  %81 = load %struct.entry*, %struct.entry** %13, align 8
  %82 = getelementptr inbounds %struct.entry, %struct.entry* %81, i32 0, i32 0
  %83 = ptrtoint %struct.TYPE_4__* %82 to i64
  store i64 %83, i64* %6, align 8
  br label %130

84:                                               ; preds = %72, %65, %58, %51, %44
  br label %85

85:                                               ; preds = %84
  %86 = load %struct.entry*, %struct.entry** %13, align 8
  %87 = getelementptr inbounds %struct.entry, %struct.entry* %86, i32 0, i32 1
  %88 = load %struct.entry*, %struct.entry** %87, align 8
  store %struct.entry* %88, %struct.entry** %13, align 8
  br label %41

89:                                               ; preds = %41
  br label %90

90:                                               ; preds = %89, %32, %5
  %91 = load %struct.entry*, %struct.entry** %13, align 8
  %92 = load i32, i32* @PERM, align 4
  %93 = call i32 @NEW0(%struct.entry* %91, i32 %92)
  %94 = load i32, i32* %7, align 4
  %95 = load %struct.entry*, %struct.entry** %13, align 8
  %96 = getelementptr inbounds %struct.entry, %struct.entry* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  store i32 %94, i32* %97, align 8
  %98 = load i64, i64* %8, align 8
  %99 = load %struct.entry*, %struct.entry** %13, align 8
  %100 = getelementptr inbounds %struct.entry, %struct.entry* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  store i64 %98, i64* %101, align 8
  %102 = load i32, i32* %9, align 4
  %103 = load %struct.entry*, %struct.entry** %13, align 8
  %104 = getelementptr inbounds %struct.entry, %struct.entry* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 2
  store i32 %102, i32* %105, align 8
  %106 = load i32, i32* %10, align 4
  %107 = load %struct.entry*, %struct.entry** %13, align 8
  %108 = getelementptr inbounds %struct.entry, %struct.entry* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 3
  store i32 %106, i32* %109, align 4
  %110 = load i8*, i8** %11, align 8
  %111 = load %struct.entry*, %struct.entry** %13, align 8
  %112 = getelementptr inbounds %struct.entry, %struct.entry* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 4
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  store i8* %110, i8** %114, align 8
  %115 = load %struct.entry**, %struct.entry*** @typetable, align 8
  %116 = load i32, i32* %12, align 4
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds %struct.entry*, %struct.entry** %115, i64 %117
  %119 = load %struct.entry*, %struct.entry** %118, align 8
  %120 = load %struct.entry*, %struct.entry** %13, align 8
  %121 = getelementptr inbounds %struct.entry, %struct.entry* %120, i32 0, i32 1
  store %struct.entry* %119, %struct.entry** %121, align 8
  %122 = load %struct.entry*, %struct.entry** %13, align 8
  %123 = load %struct.entry**, %struct.entry*** @typetable, align 8
  %124 = load i32, i32* %12, align 4
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds %struct.entry*, %struct.entry** %123, i64 %125
  store %struct.entry* %122, %struct.entry** %126, align 8
  %127 = load %struct.entry*, %struct.entry** %13, align 8
  %128 = getelementptr inbounds %struct.entry, %struct.entry* %127, i32 0, i32 0
  %129 = ptrtoint %struct.TYPE_4__* %128 to i64
  store i64 %129, i64* %6, align 8
  br label %130

130:                                              ; preds = %90, %80
  %131 = load i64, i64* %6, align 8
  ret i64 %131
}

declare dso_local i32 @NELEMS(%struct.entry**) #1

declare dso_local i32 @NEW0(%struct.entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
