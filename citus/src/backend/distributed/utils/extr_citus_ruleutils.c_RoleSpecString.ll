; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_citus_ruleutils.c_RoleSpecString.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_citus_ruleutils.c_RoleSpecString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8* }

@.str = private unnamed_addr constant [7 x i8] c"PUBLIC\00", align 1
@ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"unexpected role type %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @RoleSpecString(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  switch i32 %8, label %48 [
    i32 131, label %9
    i32 130, label %23
    i32 128, label %35
    i32 129, label %47
  ]

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i8*, i8** %14, align 8
  %16 = call i8* @quote_identifier(i8* %15)
  br label %21

17:                                               ; preds = %9
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  br label %21

21:                                               ; preds = %17, %12
  %22 = phi i8* [ %16, %12 ], [ %20, %17 ]
  store i8* %22, i8** %3, align 8
  br label %54

23:                                               ; preds = %2
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = call i32 (...) @GetUserId()
  %28 = call i8* @GetUserNameFromId(i32 %27, i32 0)
  %29 = call i8* @quote_identifier(i8* %28)
  br label %33

30:                                               ; preds = %23
  %31 = call i32 (...) @GetUserId()
  %32 = call i8* @GetUserNameFromId(i32 %31, i32 0)
  br label %33

33:                                               ; preds = %30, %26
  %34 = phi i8* [ %29, %26 ], [ %32, %30 ]
  store i8* %34, i8** %3, align 8
  br label %54

35:                                               ; preds = %2
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = call i32 (...) @GetSessionUserId()
  %40 = call i8* @GetUserNameFromId(i32 %39, i32 0)
  %41 = call i8* @quote_identifier(i8* %40)
  br label %45

42:                                               ; preds = %35
  %43 = call i32 (...) @GetSessionUserId()
  %44 = call i8* @GetUserNameFromId(i32 %43, i32 0)
  br label %45

45:                                               ; preds = %42, %38
  %46 = phi i8* [ %41, %38 ], [ %44, %42 ]
  store i8* %46, i8** %3, align 8
  br label %54

47:                                               ; preds = %2
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %54

48:                                               ; preds = %2
  %49 = load i32, i32* @ERROR, align 4
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @elog(i32 %49, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %21, %33, %45, %47, %48
  %55 = load i8*, i8** %3, align 8
  ret i8* %55
}

declare dso_local i8* @quote_identifier(i8*) #1

declare dso_local i8* @GetUserNameFromId(i32, i32) #1

declare dso_local i32 @GetUserId(...) #1

declare dso_local i32 @GetSessionUserId(...) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
