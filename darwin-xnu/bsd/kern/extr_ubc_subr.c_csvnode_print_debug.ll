; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_ubc_subr.c_csvnode_print_debug.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_ubc_subr.c_csvnode_print_debug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { %struct.ubc_info* }
%struct.ubc_info = type { %struct.cs_blob* }
%struct.cs_blob = type { i8*, i64, i64, i32, i64, i64, %struct.cs_blob* }

@.str = private unnamed_addr constant [19 x i8] c"csvnode: name: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [73 x i8] c"csvnode: range: %lu -> %lu flags: 0x%08x platform: %s path: %s team: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"<NO-TEAM>\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @csvnode_print_debug(%struct.vnode* %0) #0 {
  %2 = alloca %struct.vnode*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ubc_info*, align 8
  %5 = alloca %struct.cs_blob*, align 8
  store %struct.vnode* %0, %struct.vnode** %2, align 8
  store i8* null, i8** %3, align 8
  %6 = load %struct.vnode*, %struct.vnode** %2, align 8
  %7 = call i8* @vnode_getname_printable(%struct.vnode* %6)
  store i8* %7, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load i8*, i8** %3, align 8
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %11)
  %13 = load i8*, i8** %3, align 8
  %14 = call i32 @vnode_putname_printable(i8* %13)
  br label %15

15:                                               ; preds = %10, %1
  %16 = load %struct.vnode*, %struct.vnode** %2, align 8
  %17 = call i32 @vnode_lock_spin(%struct.vnode* %16)
  %18 = load %struct.vnode*, %struct.vnode** %2, align 8
  %19 = call i32 @UBCINFOEXISTS(%struct.vnode* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %15
  store %struct.cs_blob* null, %struct.cs_blob** %5, align 8
  br label %71

22:                                               ; preds = %15
  %23 = load %struct.vnode*, %struct.vnode** %2, align 8
  %24 = getelementptr inbounds %struct.vnode, %struct.vnode* %23, i32 0, i32 0
  %25 = load %struct.ubc_info*, %struct.ubc_info** %24, align 8
  store %struct.ubc_info* %25, %struct.ubc_info** %4, align 8
  %26 = load %struct.ubc_info*, %struct.ubc_info** %4, align 8
  %27 = getelementptr inbounds %struct.ubc_info, %struct.ubc_info* %26, i32 0, i32 0
  %28 = load %struct.cs_blob*, %struct.cs_blob** %27, align 8
  store %struct.cs_blob* %28, %struct.cs_blob** %5, align 8
  br label %29

29:                                               ; preds = %66, %22
  %30 = load %struct.cs_blob*, %struct.cs_blob** %5, align 8
  %31 = icmp ne %struct.cs_blob* %30, null
  br i1 %31, label %32, label %70

32:                                               ; preds = %29
  %33 = load %struct.cs_blob*, %struct.cs_blob** %5, align 8
  %34 = getelementptr inbounds %struct.cs_blob, %struct.cs_blob* %33, i32 0, i32 5
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.cs_blob*, %struct.cs_blob** %5, align 8
  %37 = getelementptr inbounds %struct.cs_blob, %struct.cs_blob* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.cs_blob*, %struct.cs_blob** %5, align 8
  %40 = getelementptr inbounds %struct.cs_blob, %struct.cs_blob* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.cs_blob*, %struct.cs_blob** %5, align 8
  %43 = getelementptr inbounds %struct.cs_blob, %struct.cs_blob* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %48 = load %struct.cs_blob*, %struct.cs_blob** %5, align 8
  %49 = getelementptr inbounds %struct.cs_blob, %struct.cs_blob* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %54 = load %struct.cs_blob*, %struct.cs_blob** %5, align 8
  %55 = getelementptr inbounds %struct.cs_blob, %struct.cs_blob* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %32
  %59 = load %struct.cs_blob*, %struct.cs_blob** %5, align 8
  %60 = getelementptr inbounds %struct.cs_blob, %struct.cs_blob* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  br label %63

62:                                               ; preds = %32
  br label %63

63:                                               ; preds = %62, %58
  %64 = phi i8* [ %61, %58 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), %62 ]
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i64 %35, i64 %38, i32 %41, i8* %47, i8* %53, i8* %64)
  br label %66

66:                                               ; preds = %63
  %67 = load %struct.cs_blob*, %struct.cs_blob** %5, align 8
  %68 = getelementptr inbounds %struct.cs_blob, %struct.cs_blob* %67, i32 0, i32 6
  %69 = load %struct.cs_blob*, %struct.cs_blob** %68, align 8
  store %struct.cs_blob* %69, %struct.cs_blob** %5, align 8
  br label %29

70:                                               ; preds = %29
  br label %71

71:                                               ; preds = %70, %21
  %72 = load %struct.vnode*, %struct.vnode** %2, align 8
  %73 = call i32 @vnode_unlock(%struct.vnode* %72)
  ret void
}

declare dso_local i8* @vnode_getname_printable(%struct.vnode*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @vnode_putname_printable(i8*) #1

declare dso_local i32 @vnode_lock_spin(%struct.vnode*) #1

declare dso_local i32 @UBCINFOEXISTS(%struct.vnode*) #1

declare dso_local i32 @vnode_unlock(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
