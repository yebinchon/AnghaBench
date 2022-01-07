; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IPsec.c_AddEtherIPId.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IPsec.c_AddEtherIPId.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_14__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AddEtherIPId(%struct.TYPE_13__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_14__, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %4, align 8
  %7 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %8 = icmp eq %struct.TYPE_13__* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %11 = icmp eq %struct.TYPE_14__* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %9, %2
  br label %55

13:                                               ; preds = %9
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @Lock(i32 %16)
  %18 = call i32 @Zero(%struct.TYPE_14__* %5, i32 4)
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @StrCpy(i32 %20, i32 4, i32 %23)
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.TYPE_14__* @Search(i32 %27, %struct.TYPE_14__* %5)
  store %struct.TYPE_14__* %28, %struct.TYPE_14__** %6, align 8
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %30 = icmp ne %struct.TYPE_14__* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %13
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %36 = call i32 @Delete(i32 %34, %struct.TYPE_14__* %35)
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %38 = call i32 @Free(%struct.TYPE_14__* %37)
  br label %39

39:                                               ; preds = %31, %13
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %41 = call %struct.TYPE_14__* @Clone(%struct.TYPE_14__* %40, i32 4)
  store %struct.TYPE_14__* %41, %struct.TYPE_14__** %6, align 8
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %46 = call i32 @Insert(i32 %44, %struct.TYPE_14__* %45)
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @Unlock(i32 %53)
  br label %55

55:                                               ; preds = %39, %12
  ret void
}

declare dso_local i32 @Lock(i32) #1

declare dso_local i32 @Zero(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @StrCpy(i32, i32, i32) #1

declare dso_local %struct.TYPE_14__* @Search(i32, %struct.TYPE_14__*) #1

declare dso_local i32 @Delete(i32, %struct.TYPE_14__*) #1

declare dso_local i32 @Free(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_14__* @Clone(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @Insert(i32, %struct.TYPE_14__*) #1

declare dso_local i32 @Unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
