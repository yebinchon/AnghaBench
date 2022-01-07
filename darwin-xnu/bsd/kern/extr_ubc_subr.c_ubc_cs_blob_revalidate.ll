; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_ubc_subr.c_ubc_cs_blob_revalidate.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_ubc_subr.c_ubc_cs_blob_revalidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.cs_blob = type { i64, i32, i32, i64, i64 }
%struct.image_params = type { i32 }
%struct.TYPE_6__ = type { i32 }

@cs_debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"CODESIGNING: csblob invalid: %d\0A\00", align 1
@CS_ALLOWED_MACHO = common dso_local global i32 0, align 4
@CS_VALID = common dso_local global i32 0, align 4
@CS_SIGNER_TYPE_UNKNOWN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [75 x i8] c"CODESIGNING: revalidate: not inline revalidating reconstituted signature.\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@cs_blob_generation_count = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubc_cs_blob_revalidate(%struct.vnode* %0, %struct.cs_blob* %1, %struct.image_params* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca %struct.cs_blob*, align 8
  %8 = alloca %struct.image_params*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %6, align 8
  store %struct.cs_blob* %1, %struct.cs_blob** %7, align 8
  store %struct.image_params* %2, %struct.image_params** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %11, align 8
  store i32* null, i32** %12, align 8
  %16 = load %struct.vnode*, %struct.vnode** %6, align 8
  %17 = icmp ne %struct.vnode* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load %struct.cs_blob*, %struct.cs_blob** %7, align 8
  %21 = icmp ne %struct.cs_blob* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load %struct.cs_blob*, %struct.cs_blob** %7, align 8
  %25 = getelementptr inbounds %struct.cs_blob, %struct.cs_blob* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %13, align 8
  %27 = load %struct.cs_blob*, %struct.cs_blob** %7, align 8
  %28 = getelementptr inbounds %struct.cs_blob, %struct.cs_blob* %27, i32 0, i32 4
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i32*
  %31 = load i64, i64* %13, align 8
  %32 = call i32 @cs_validate_csblob(i32* %30, i64 %31, %struct.TYPE_6__** %11, i32** %12)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %4
  %36 = load i64, i64* @cs_debug, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32, i32* %10, align 4
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %38, %35
  br label %95

42:                                               ; preds = %4
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @ntohl(i32 %45)
  %47 = load i32, i32* @CS_ALLOWED_MACHO, align 4
  %48 = and i32 %46, %47
  %49 = load i32, i32* @CS_VALID, align 4
  %50 = or i32 %48, %49
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* @CS_SIGNER_TYPE_UNKNOWN, align 4
  store i32 %51, i32* %15, align 4
  %52 = load %struct.cs_blob*, %struct.cs_blob** %7, align 8
  %53 = getelementptr inbounds %struct.cs_blob, %struct.cs_blob* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %42
  %57 = load i64, i64* @cs_debug, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %56
  %62 = load i32, i32* @EAGAIN, align 4
  store i32 %62, i32* %5, align 4
  br label %97

63:                                               ; preds = %42
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %15, align 4
  %66 = load %struct.vnode*, %struct.vnode** %6, align 8
  %67 = call i32 @vnode_lock_spin(%struct.vnode* %66)
  %68 = load i32, i32* %14, align 4
  %69 = load %struct.cs_blob*, %struct.cs_blob** %7, align 8
  %70 = getelementptr inbounds %struct.cs_blob, %struct.cs_blob* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 8
  %71 = load i32, i32* %15, align 4
  %72 = load %struct.cs_blob*, %struct.cs_blob** %7, align 8
  %73 = getelementptr inbounds %struct.cs_blob, %struct.cs_blob* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 4
  %74 = load %struct.vnode*, %struct.vnode** %6, align 8
  %75 = call i64 @UBCINFOEXISTS(%struct.vnode* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %92

77:                                               ; preds = %63
  %78 = load i32, i32* %10, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %77
  %81 = load i64, i64* @cs_blob_generation_count, align 8
  %82 = load %struct.vnode*, %struct.vnode** %6, align 8
  %83 = getelementptr inbounds %struct.vnode, %struct.vnode* %82, i32 0, i32 0
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  store i64 %81, i64* %85, align 8
  br label %91

86:                                               ; preds = %77
  %87 = load %struct.vnode*, %struct.vnode** %6, align 8
  %88 = getelementptr inbounds %struct.vnode, %struct.vnode* %87, i32 0, i32 0
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  store i64 0, i64* %90, align 8
  br label %91

91:                                               ; preds = %86, %80
  br label %92

92:                                               ; preds = %91, %63
  %93 = load %struct.vnode*, %struct.vnode** %6, align 8
  %94 = call i32 @vnode_unlock(%struct.vnode* %93)
  br label %95

95:                                               ; preds = %92, %41
  %96 = load i32, i32* %10, align 4
  store i32 %96, i32* %5, align 4
  br label %97

97:                                               ; preds = %95, %61
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @cs_validate_csblob(i32*, i64, %struct.TYPE_6__**, i32**) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @vnode_lock_spin(%struct.vnode*) #1

declare dso_local i64 @UBCINFOEXISTS(%struct.vnode*) #1

declare dso_local i32 @vnode_unlock(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
