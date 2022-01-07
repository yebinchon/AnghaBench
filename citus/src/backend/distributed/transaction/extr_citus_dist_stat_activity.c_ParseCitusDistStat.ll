; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/transaction/extr_citus_dist_stat_activity.c_ParseCitusDistStat.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/transaction/extr_citus_dist_stat_activity.c_ParseCitusDistStat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_4__* (i32*, i32)* @ParseCitusDistStat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_4__* @ParseCitusDistStat(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = call i64 @palloc0(i32 160)
  %8 = inttoptr i64 %7 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %8, %struct.TYPE_4__** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load i32*, i32** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i64 @PQgetisnull(i32* %9, i32 %10, i32 0)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %18

14:                                               ; preds = %2
  %15 = load i32*, i32** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @ParseIntField(i32* %15, i32 %16, i32 0)
  br label %18

18:                                               ; preds = %14, %13
  %19 = phi i32 [ -1, %13 ], [ %17, %14 ]
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %22 = call i32 @ReplaceInitiatorNodeIdentifier(i32 %20, %struct.TYPE_4__* %21)
  %23 = load i32*, i32** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @ParseIntField(i32* %23, i32 %24, i32 1)
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load i32*, i32** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i8* @ParseTimestampTzField(i32* %28, i32 %29, i32 2)
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 21
  store i8* %30, i8** %32, align 8
  %33 = load i32*, i32** %3, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @ParseIntField(i32* %33, i32 %34, i32 3)
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load i32*, i32** %3, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i8* @ParseNameField(i32* %38, i32 %39, i32 4)
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 20
  store i8* %40, i8** %42, align 8
  %43 = load i32*, i32** %3, align 8
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @ParseIntField(i32* %43, i32 %44, i32 5)
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  %48 = load i32*, i32** %3, align 8
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @ParseIntField(i32* %48, i32 %49, i32 6)
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 4
  %53 = load i32*, i32** %3, align 8
  %54 = load i32, i32* %4, align 4
  %55 = call i8* @ParseNameField(i32* %53, i32 %54, i32 7)
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 19
  store i8* %55, i8** %57, align 8
  %58 = load i32*, i32** %3, align 8
  %59 = load i32, i32* %4, align 4
  %60 = call i8* @ParseTextField(i32* %58, i32 %59, i32 8)
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 18
  store i8* %60, i8** %62, align 8
  %63 = load i32*, i32** %3, align 8
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @ParseInetField(i32* %63, i32 %64, i32 9)
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 17
  store i32 %65, i32* %67, align 8
  %68 = load i32*, i32** %3, align 8
  %69 = load i32, i32* %4, align 4
  %70 = call i8* @ParseTextField(i32* %68, i32 %69, i32 10)
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 16
  store i8* %70, i8** %72, align 8
  %73 = load i32*, i32** %3, align 8
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @ParseIntField(i32* %73, i32 %74, i32 11)
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 4
  store i32 %75, i32* %77, align 8
  %78 = load i32*, i32** %3, align 8
  %79 = load i32, i32* %4, align 4
  %80 = call i8* @ParseTimestampTzField(i32* %78, i32 %79, i32 12)
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 15
  store i8* %80, i8** %82, align 8
  %83 = load i32*, i32** %3, align 8
  %84 = load i32, i32* %4, align 4
  %85 = call i8* @ParseTimestampTzField(i32* %83, i32 %84, i32 13)
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 14
  store i8* %85, i8** %87, align 8
  %88 = load i32*, i32** %3, align 8
  %89 = load i32, i32* %4, align 4
  %90 = call i8* @ParseTimestampTzField(i32* %88, i32 %89, i32 14)
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 13
  store i8* %90, i8** %92, align 8
  %93 = load i32*, i32** %3, align 8
  %94 = load i32, i32* %4, align 4
  %95 = call i8* @ParseTimestampTzField(i32* %93, i32 %94, i32 15)
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 12
  store i8* %95, i8** %97, align 8
  %98 = load i32*, i32** %3, align 8
  %99 = load i32, i32* %4, align 4
  %100 = call i8* @ParseTextField(i32* %98, i32 %99, i32 16)
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 11
  store i8* %100, i8** %102, align 8
  %103 = load i32*, i32** %3, align 8
  %104 = load i32, i32* %4, align 4
  %105 = call i8* @ParseTextField(i32* %103, i32 %104, i32 17)
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 10
  store i8* %105, i8** %107, align 8
  %108 = load i32*, i32** %3, align 8
  %109 = load i32, i32* %4, align 4
  %110 = call i8* @ParseTextField(i32* %108, i32 %109, i32 18)
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 9
  store i8* %110, i8** %112, align 8
  %113 = load i32*, i32** %3, align 8
  %114 = load i32, i32* %4, align 4
  %115 = call i8* @ParseXIDField(i32* %113, i32 %114, i32 19)
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 8
  store i8* %115, i8** %117, align 8
  %118 = load i32*, i32** %3, align 8
  %119 = load i32, i32* %4, align 4
  %120 = call i8* @ParseXIDField(i32* %118, i32 %119, i32 20)
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 7
  store i8* %120, i8** %122, align 8
  %123 = load i32*, i32** %3, align 8
  %124 = load i32, i32* %4, align 4
  %125 = call i8* @ParseTextField(i32* %123, i32 %124, i32 21)
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 6
  store i8* %125, i8** %127, align 8
  %128 = load i32*, i32** %3, align 8
  %129 = load i32, i32* %4, align 4
  %130 = call i8* @ParseTextField(i32* %128, i32 %129, i32 22)
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 5
  store i8* %130, i8** %132, align 8
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  ret %struct.TYPE_4__* %133
}

declare dso_local i64 @palloc0(i32) #1

declare dso_local i64 @PQgetisnull(i32*, i32, i32) #1

declare dso_local i32 @ParseIntField(i32*, i32, i32) #1

declare dso_local i32 @ReplaceInitiatorNodeIdentifier(i32, %struct.TYPE_4__*) #1

declare dso_local i8* @ParseTimestampTzField(i32*, i32, i32) #1

declare dso_local i8* @ParseNameField(i32*, i32, i32) #1

declare dso_local i8* @ParseTextField(i32*, i32, i32) #1

declare dso_local i32 @ParseInetField(i32*, i32, i32) #1

declare dso_local i8* @ParseXIDField(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
