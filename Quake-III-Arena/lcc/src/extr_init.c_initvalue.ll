; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_init.c_initvalue.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_init.c_initvalue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }

@needconst = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"invalid initialization type; found `%t' expected `%t'\0A\00", align 1
@inttype = common dso_local global i32 0, align 4
@CNST = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"initializer must be constant\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (i8*)* @initvalue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @initvalue(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i32, i32* @needconst, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, i32* @needconst, align 4
  %7 = call %struct.TYPE_8__* @expr1(i32 0)
  store %struct.TYPE_8__* %7, %struct.TYPE_8__** %4, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %10 = call i8* @assign(i8* %8, %struct.TYPE_8__* %9)
  store i8* %10, i8** %3, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = call %struct.TYPE_8__* @cast(%struct.TYPE_8__* %13, i8* %14)
  store %struct.TYPE_8__* %15, %struct.TYPE_8__** %4, align 8
  br label %26

16:                                               ; preds = %1
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i8*, i8** %2, align 8
  %21 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %19, i8* %20)
  %22 = load i32, i32* @inttype, align 4
  %23 = call i32 @consttree(i32 0, i32 %22)
  %24 = load i8*, i8** %2, align 8
  %25 = call %struct.TYPE_8__* @retype(i32 %23, i8* %24)
  store %struct.TYPE_8__* %25, %struct.TYPE_8__** %4, align 8
  br label %26

26:                                               ; preds = %16, %12
  %27 = load i32, i32* @needconst, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* @needconst, align 4
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @generic(i32 %31)
  %33 = load i64, i64* @CNST, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %26
  %36 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* @inttype, align 4
  %38 = call i32 @consttree(i32 0, i32 %37)
  %39 = load i8*, i8** %2, align 8
  %40 = call %struct.TYPE_8__* @retype(i32 %38, i8* %39)
  store %struct.TYPE_8__* %40, %struct.TYPE_8__** %4, align 8
  br label %41

41:                                               ; preds = %35, %26
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  ret %struct.TYPE_8__* %42
}

declare dso_local %struct.TYPE_8__* @expr1(i32) #1

declare dso_local i8* @assign(i8*, %struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_8__* @cast(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local %struct.TYPE_8__* @retype(i32, i8*) #1

declare dso_local i32 @consttree(i32, i32) #1

declare dso_local i64 @generic(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
