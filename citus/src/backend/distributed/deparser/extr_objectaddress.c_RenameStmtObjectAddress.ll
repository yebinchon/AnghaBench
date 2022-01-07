; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/deparser/extr_objectaddress.c_RenameStmtObjectAddress.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/deparser/extr_objectaddress.c_RenameStmtObjectAddress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"unsupported rename statement to get object address for\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_6__*, i32)* @RenameStmtObjectAddress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @RenameStmtObjectAddress(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %21 [
    i32 128, label %9
    i32 131, label %13
    i32 129, label %17
    i32 132, label %17
    i32 130, label %17
  ]

9:                                                ; preds = %2
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32* @RenameTypeStmtObjectAddress(%struct.TYPE_6__* %10, i32 %11)
  store i32* %12, i32** %3, align 8
  br label %25

13:                                               ; preds = %2
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32* @RenameAttributeStmtObjectAddress(%struct.TYPE_6__* %14, i32 %15)
  store i32* %16, i32** %3, align 8
  br label %25

17:                                               ; preds = %2, %2, %2
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32* @RenameFunctionStmtObjectAddress(%struct.TYPE_6__* %18, i32 %19)
  store i32* %20, i32** %3, align 8
  br label %25

21:                                               ; preds = %2
  %22 = load i32, i32* @ERROR, align 4
  %23 = call i32 @errmsg(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %24 = call i32 @ereport(i32 %22, i32 %23)
  br label %25

25:                                               ; preds = %9, %13, %17, %21
  %26 = load i32*, i32** %3, align 8
  ret i32* %26
}

declare dso_local i32* @RenameTypeStmtObjectAddress(%struct.TYPE_6__*, i32) #1

declare dso_local i32* @RenameAttributeStmtObjectAddress(%struct.TYPE_6__*, i32) #1

declare dso_local i32* @RenameFunctionStmtObjectAddress(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
