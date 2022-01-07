; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/extr_shared_library_init.c_NodeConninfoGucAssignHook.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/extr_shared_library_init.c_NodeConninfoGucAssignHook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@FATAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"cannot parse node_conninfo value\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"The GUC check hook should prevent all malformed values.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @NodeConninfoGucAssignHook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @NodeConninfoGucAssignHook(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %5, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %6, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %10

10:                                               ; preds = %9, %2
  %11 = load i8*, i8** %3, align 8
  %12 = call %struct.TYPE_4__* @PQconninfoParse(i8* %11, i32* null)
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** %5, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %14 = icmp eq %struct.TYPE_4__* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %10
  %16 = load i32, i32* @FATAL, align 4
  %17 = call i32 @errmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %18 = call i32 @errdetail(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  %19 = call i32 @ereport(i32 %16, i32 %18)
  br label %20

20:                                               ; preds = %15, %10
  %21 = call i32 (...) @ResetConnParams()
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  store %struct.TYPE_4__* %22, %struct.TYPE_4__** %6, align 8
  br label %23

23:                                               ; preds = %50, %20
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %53

28:                                               ; preds = %23
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %41, label %33

33:                                               ; preds = %28
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 0
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %33, %28
  br label %50

42:                                               ; preds = %33
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @AddConnParam(i32* %45, i8* %48)
  br label %50

50:                                               ; preds = %42, %41
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 1
  store %struct.TYPE_4__* %52, %struct.TYPE_4__** %6, align 8
  br label %23

53:                                               ; preds = %23
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %55 = call i32 @PQconninfoFree(%struct.TYPE_4__* %54)
  ret void
}

declare dso_local %struct.TYPE_4__* @PQconninfoParse(i8*, i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @errdetail(i8*) #1

declare dso_local i32 @ResetConnParams(...) #1

declare dso_local i32 @AddConnParam(i32*, i8*) #1

declare dso_local i32 @PQconninfoFree(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
