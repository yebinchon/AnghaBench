; ModuleID = '/home/carl/AnghaBench/8cc/extr_parse.c_fix_rectype_flexible_member.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_parse.c_fix_rectype_flexible_member.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i64 }

@KIND_ARRAY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [58 x i8] c"flexible member may only appear as the last member: %s %s\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"flexible member with no other fields: %s %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @fix_rectype_flexible_member to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fix_rectype_flexible_member(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %60, %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @vec_len(i32* %9)
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %12, label %63

12:                                               ; preds = %7
  %13 = load i32*, i32** %2, align 8
  %14 = load i32, i32* %3, align 4
  %15 = call i8** @vec_get(i32* %13, i32 %14)
  store i8** %15, i8*** %4, align 8
  %16 = load i8**, i8*** %4, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %5, align 8
  %19 = load i8**, i8*** %4, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 1
  %21 = load i8*, i8** %20, align 8
  %22 = bitcast i8* %21 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %22, %struct.TYPE_3__** %6, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @KIND_ARRAY, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %12
  br label %60

29:                                               ; preds = %12
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %59

34:                                               ; preds = %29
  %35 = load i32, i32* %3, align 4
  %36 = load i32*, i32** %2, align 8
  %37 = call i32 @vec_len(i32* %36)
  %38 = sub nsw i32 %37, 1
  %39 = icmp ne i32 %35, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %42 = call i32 @ty2s(%struct.TYPE_3__* %41)
  %43 = load i8*, i8** %5, align 8
  %44 = call i32 @error(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %42, i8* %43)
  br label %45

45:                                               ; preds = %40, %34
  %46 = load i32*, i32** %2, align 8
  %47 = call i32 @vec_len(i32* %46)
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %54

49:                                               ; preds = %45
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %51 = call i32 @ty2s(%struct.TYPE_3__* %50)
  %52 = load i8*, i8** %5, align 8
  %53 = call i32 @error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %51, i8* %52)
  br label %54

54:                                               ; preds = %49, %45
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  store i32 0, i32* %56, align 8
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 2
  store i64 0, i64* %58, align 8
  br label %59

59:                                               ; preds = %54, %29
  br label %60

60:                                               ; preds = %59, %28
  %61 = load i32, i32* %3, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %3, align 4
  br label %7

63:                                               ; preds = %7
  ret void
}

declare dso_local i32 @vec_len(i32*) #1

declare dso_local i8** @vec_get(i32*, i32) #1

declare dso_local i32 @error(i8*, i32, i8*) #1

declare dso_local i32 @ty2s(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
