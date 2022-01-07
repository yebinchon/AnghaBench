; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/devfs/extr_devfs_fdesc_support.c_devfs_devfd_lookup.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/devfs/extr_devfs_fdesc_support.c_devfs_devfd_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnop_lookup_args = type { i32, %struct.componentname*, %struct.vnode*, %struct.vnode** }
%struct.componentname = type { i8*, i32 }
%struct.vnode = type { i32 }
%struct.proc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@UF_RESERVED = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@Fdesc = common dso_local global i32 0, align 4
@FD_DESC = common dso_local global i64 0, align 8
@VNON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @devfs_devfd_lookup(%struct.vnop_lookup_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vnop_lookup_args*, align 8
  %4 = alloca %struct.vnode**, align 8
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca %struct.componentname*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.proc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.vnode*, align 8
  store %struct.vnop_lookup_args* %0, %struct.vnop_lookup_args** %3, align 8
  %13 = load %struct.vnop_lookup_args*, %struct.vnop_lookup_args** %3, align 8
  %14 = getelementptr inbounds %struct.vnop_lookup_args, %struct.vnop_lookup_args* %13, i32 0, i32 3
  %15 = load %struct.vnode**, %struct.vnode*** %14, align 8
  store %struct.vnode** %15, %struct.vnode*** %4, align 8
  %16 = load %struct.vnop_lookup_args*, %struct.vnop_lookup_args** %3, align 8
  %17 = getelementptr inbounds %struct.vnop_lookup_args, %struct.vnop_lookup_args* %16, i32 0, i32 2
  %18 = load %struct.vnode*, %struct.vnode** %17, align 8
  store %struct.vnode* %18, %struct.vnode** %5, align 8
  %19 = load %struct.vnop_lookup_args*, %struct.vnop_lookup_args** %3, align 8
  %20 = getelementptr inbounds %struct.vnop_lookup_args, %struct.vnop_lookup_args* %19, i32 0, i32 1
  %21 = load %struct.componentname*, %struct.componentname** %20, align 8
  store %struct.componentname* %21, %struct.componentname** %6, align 8
  %22 = load %struct.componentname*, %struct.componentname** %6, align 8
  %23 = getelementptr inbounds %struct.componentname, %struct.componentname* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %7, align 8
  %25 = load %struct.vnop_lookup_args*, %struct.vnop_lookup_args** %3, align 8
  %26 = getelementptr inbounds %struct.vnop_lookup_args, %struct.vnop_lookup_args* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call %struct.proc* @vfs_context_proc(i32 %27)
  store %struct.proc* %28, %struct.proc** %8, align 8
  %29 = load %struct.proc*, %struct.proc** %8, align 8
  %30 = getelementptr inbounds %struct.proc, %struct.proc* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %9, align 4
  %34 = load %struct.componentname*, %struct.componentname** %6, align 8
  %35 = getelementptr inbounds %struct.componentname, %struct.componentname* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %52

38:                                               ; preds = %1
  %39 = load i8*, i8** %7, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 46
  br i1 %42, label %43, label %52

43:                                               ; preds = %38
  %44 = load %struct.vnode*, %struct.vnode** %5, align 8
  %45 = load %struct.vnode**, %struct.vnode*** %4, align 8
  store %struct.vnode* %44, %struct.vnode** %45, align 8
  %46 = load %struct.vnode*, %struct.vnode** %5, align 8
  %47 = call i32 @vnode_get(%struct.vnode* %46)
  store i32 %47, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i32, i32* %11, align 4
  store i32 %50, i32* %2, align 4
  br label %130

51:                                               ; preds = %43
  store i32 0, i32* %2, align 4
  br label %130

52:                                               ; preds = %38, %1
  store i32 0, i32* %10, align 4
  br label %53

53:                                               ; preds = %78, %52
  %54 = load i8*, i8** %7, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp sge i32 %56, 48
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load i8*, i8** %7, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp sle i32 %61, 57
  br label %63

63:                                               ; preds = %58, %53
  %64 = phi i1 [ false, %53 ], [ %62, %58 ]
  br i1 %64, label %65, label %79

65:                                               ; preds = %63
  %66 = load i32, i32* %10, align 4
  %67 = mul nsw i32 10, %66
  %68 = load i8*, i8** %7, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %7, align 8
  %70 = load i8, i8* %68, align 1
  %71 = sext i8 %70 to i32
  %72 = add nsw i32 %67, %71
  %73 = sub nsw i32 %72, 48
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %9, align 4
  %76 = icmp sge i32 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %65
  br label %79

78:                                               ; preds = %65
  br label %53

79:                                               ; preds = %77, %63
  %80 = load i8*, i8** %7, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %79
  %85 = load i32, i32* @ENOENT, align 4
  store i32 %85, i32* %11, align 4
  br label %127

86:                                               ; preds = %79
  %87 = load i32, i32* %10, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %107, label %89

89:                                               ; preds = %86
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* %9, align 4
  %92 = icmp sge i32 %90, %91
  br i1 %92, label %107, label %93

93:                                               ; preds = %89
  %94 = load %struct.proc*, %struct.proc** %8, align 8
  %95 = load i32, i32* %10, align 4
  %96 = call i32** @fdfile(%struct.proc* %94, i32 %95)
  %97 = load i32*, i32** %96, align 8
  %98 = icmp eq i32* %97, null
  br i1 %98, label %107, label %99

99:                                               ; preds = %93
  %100 = load %struct.proc*, %struct.proc** %8, align 8
  %101 = load i32, i32* %10, align 4
  %102 = call i32* @fdflags(%struct.proc* %100, i32 %101)
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @UF_RESERVED, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %99, %93, %89, %86
  %108 = load i32, i32* @EBADF, align 4
  store i32 %108, i32* %11, align 4
  br label %127

109:                                              ; preds = %99
  %110 = load i32, i32* @Fdesc, align 4
  %111 = load i64, i64* @FD_DESC, align 8
  %112 = load i32, i32* %10, align 4
  %113 = sext i32 %112 to i64
  %114 = add nsw i64 %111, %113
  %115 = load %struct.vnode*, %struct.vnode** %5, align 8
  %116 = getelementptr inbounds %struct.vnode, %struct.vnode* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @VNON, align 4
  %119 = load i32, i32* %10, align 4
  %120 = call i32 @fdesc_allocvp(i32 %110, i64 %114, i32 %117, %struct.vnode** %12, i32 %118, i32 %119)
  store i32 %120, i32* %11, align 4
  %121 = load i32, i32* %11, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %109
  br label %127

124:                                              ; preds = %109
  %125 = load %struct.vnode*, %struct.vnode** %12, align 8
  %126 = load %struct.vnode**, %struct.vnode*** %4, align 8
  store %struct.vnode* %125, %struct.vnode** %126, align 8
  store i32 0, i32* %2, align 4
  br label %130

127:                                              ; preds = %123, %107, %84
  %128 = load %struct.vnode**, %struct.vnode*** %4, align 8
  store %struct.vnode* null, %struct.vnode** %128, align 8
  %129 = load i32, i32* %11, align 4
  store i32 %129, i32* %2, align 4
  br label %130

130:                                              ; preds = %127, %124, %51, %49
  %131 = load i32, i32* %2, align 4
  ret i32 %131
}

declare dso_local %struct.proc* @vfs_context_proc(i32) #1

declare dso_local i32 @vnode_get(%struct.vnode*) #1

declare dso_local i32** @fdfile(%struct.proc*, i32) #1

declare dso_local i32* @fdflags(%struct.proc*, i32) #1

declare dso_local i32 @fdesc_allocvp(i32, i64, i32, %struct.vnode**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
