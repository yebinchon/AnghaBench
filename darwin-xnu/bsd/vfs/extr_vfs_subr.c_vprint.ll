; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_subr.c_vprint.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_subr.c_vprint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i64, i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"type %s, usecount %d, writecount %d\00", align 1
@typename = common dso_local global i8** null, align 8
@VROOT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"|VROOT\00", align 1
@VTEXT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"|VTEXT\00", align 1
@VSYSTEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"|VSYSTEM\00", align 1
@VNOFLUSH = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"|VNOFLUSH\00", align 1
@VBWAIT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"|VBWAIT\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"|VALIASED\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c" flags (%s)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vprint(i8* %0, %struct.vnode* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca [64 x i8], align 16
  store i8* %0, i8** %3, align 8
  store %struct.vnode* %1, %struct.vnode** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load i8*, i8** %3, align 8
  %10 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %9)
  br label %11

11:                                               ; preds = %8, %2
  %12 = load i8**, i8*** @typename, align 8
  %13 = load %struct.vnode*, %struct.vnode** %4, align 8
  %14 = getelementptr inbounds %struct.vnode, %struct.vnode* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds i8*, i8** %12, i64 %15
  %17 = load i8*, i8** %16, align 8
  %18 = load %struct.vnode*, %struct.vnode** %4, align 8
  %19 = getelementptr inbounds %struct.vnode, %struct.vnode* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.vnode*, %struct.vnode** %4, align 8
  %22 = getelementptr inbounds %struct.vnode, %struct.vnode* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %17, i32 %20, i32 %23)
  %25 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  store i8 0, i8* %25, align 16
  %26 = load %struct.vnode*, %struct.vnode** %4, align 8
  %27 = getelementptr inbounds %struct.vnode, %struct.vnode* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @VROOT, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %11
  %33 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %34 = call i32 @strlcat(i8* %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 64)
  br label %35

35:                                               ; preds = %32, %11
  %36 = load %struct.vnode*, %struct.vnode** %4, align 8
  %37 = getelementptr inbounds %struct.vnode, %struct.vnode* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @VTEXT, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %44 = call i32 @strlcat(i8* %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 64)
  br label %45

45:                                               ; preds = %42, %35
  %46 = load %struct.vnode*, %struct.vnode** %4, align 8
  %47 = getelementptr inbounds %struct.vnode, %struct.vnode* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @VSYSTEM, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %54 = call i32 @strlcat(i8* %53, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 64)
  br label %55

55:                                               ; preds = %52, %45
  %56 = load %struct.vnode*, %struct.vnode** %4, align 8
  %57 = getelementptr inbounds %struct.vnode, %struct.vnode* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @VNOFLUSH, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %55
  %63 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %64 = call i32 @strlcat(i8* %63, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 64)
  br label %65

65:                                               ; preds = %62, %55
  %66 = load %struct.vnode*, %struct.vnode** %4, align 8
  %67 = getelementptr inbounds %struct.vnode, %struct.vnode* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @VBWAIT, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %65
  %73 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %74 = call i32 @strlcat(i8* %73, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 64)
  br label %75

75:                                               ; preds = %72, %65
  %76 = load %struct.vnode*, %struct.vnode** %4, align 8
  %77 = call i64 @vnode_isaliased(%struct.vnode* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %75
  %80 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %81 = call i32 @strlcat(i8* %80, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 64)
  br label %82

82:                                               ; preds = %79, %75
  %83 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %84 = load i8, i8* %83, align 16
  %85 = sext i8 %84 to i32
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 1
  %89 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8* %88)
  br label %90

90:                                               ; preds = %87, %82
  ret void
}

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i32 @strlcat(i8*, i8*, i32) #1

declare dso_local i64 @vnode_isaliased(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
