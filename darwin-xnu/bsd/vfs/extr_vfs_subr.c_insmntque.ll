; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_subr.c_insmntque.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_subr.c_insmntque.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i32, %struct.TYPE_17__, %struct.TYPE_20__* }
%struct.TYPE_17__ = type { %struct.TYPE_18__**, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_18__** }

@dead_mountp = common dso_local global %struct.TYPE_20__* null, align 8
@VNAMED_MOUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"insmntque: vp not in mount vnode list\00", align 1
@vnodelst = common dso_local global i32 0, align 4
@v_mntvnodes = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"vp already in mount list\00", align 1
@MNT_LITER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"insmntque: vp already in mount vnode list\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_19__*, %struct.TYPE_20__*)* @insmntque to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @insmntque(%struct.TYPE_19__* %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %4, align 8
  %6 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 2
  %8 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  store %struct.TYPE_20__* %8, %struct.TYPE_20__** %5, align 8
  %9 = icmp ne %struct.TYPE_20__* %8, null
  br i1 %9, label %10, label %109

10:                                               ; preds = %2
  %11 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %12 = load %struct.TYPE_20__*, %struct.TYPE_20__** @dead_mountp, align 8
  %13 = icmp ne %struct.TYPE_20__* %11, %12
  br i1 %13, label %14, label %109

14:                                               ; preds = %10
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @VNAMED_MOUNT, align 4
  %19 = and i32 %17, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = call i32 @panic(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %14
  %24 = load i32, i32* @VNAMED_MOUNT, align 4
  %25 = xor i32 %24, -1
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = and i32 %28, %25
  store i32 %29, i32* %27, align 8
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %31 = call i32 @mount_lock_spin(%struct.TYPE_20__* %30)
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %33 = call i32 @mount_drop(%struct.TYPE_20__* %32, i32 1)
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %36, align 8
  %38 = icmp eq %struct.TYPE_18__* %37, null
  br i1 %38, label %39, label %81

39:                                               ; preds = %23
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %40, i32 0, i32 1
  %42 = load i32, i32* @vnodelst, align 4
  %43 = call %struct.TYPE_19__* @TAILQ_LAST(i32* %41, i32 %42)
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %45 = icmp eq %struct.TYPE_19__* %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %39
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %50 = load i32, i32* @v_mntvnodes, align 4
  %51 = call i32 @TAILQ_REMOVE(i32* %48, %struct.TYPE_19__* %49, i32 %50)
  br label %80

52:                                               ; preds = %39
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 2
  %55 = load i32, i32* @vnodelst, align 4
  %56 = call %struct.TYPE_19__* @TAILQ_LAST(i32* %54, i32 %55)
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %58 = icmp eq %struct.TYPE_19__* %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %52
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 2
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %63 = load i32, i32* @v_mntvnodes, align 4
  %64 = call i32 @TAILQ_REMOVE(i32* %61, %struct.TYPE_19__* %62, i32 %63)
  br label %79

65:                                               ; preds = %52
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i32 0, i32 3
  %68 = load i32, i32* @vnodelst, align 4
  %69 = call %struct.TYPE_19__* @TAILQ_LAST(i32* %67, i32 %68)
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %71 = icmp eq %struct.TYPE_19__* %69, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %65
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %73, i32 0, i32 3
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %76 = load i32, i32* @v_mntvnodes, align 4
  %77 = call i32 @TAILQ_REMOVE(i32* %74, %struct.TYPE_19__* %75, i32 %76)
  br label %78

78:                                               ; preds = %72, %65
  br label %79

79:                                               ; preds = %78, %59
  br label %80

80:                                               ; preds = %79, %46
  br label %100

81:                                               ; preds = %23
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %84, align 8
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 0
  store %struct.TYPE_18__** %85, %struct.TYPE_18__*** %91, align 8
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %94, align 8
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %98, align 8
  store %struct.TYPE_18__* %95, %struct.TYPE_18__** %99, align 8
  br label %100

100:                                              ; preds = %81, %80
  %101 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 1
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %103, align 8
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 0
  store %struct.TYPE_18__** null, %struct.TYPE_18__*** %106, align 8
  %107 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %108 = call i32 @mount_unlock(%struct.TYPE_20__* %107)
  br label %168

109:                                              ; preds = %10, %2
  %110 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %111 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %111, i32 0, i32 2
  store %struct.TYPE_20__* %110, %struct.TYPE_20__** %112, align 8
  %113 = icmp ne %struct.TYPE_20__* %110, null
  br i1 %113, label %114, label %168

114:                                              ; preds = %109
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %116 = call i32 @mount_lock_spin(%struct.TYPE_20__* %115)
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_18__*, %struct.TYPE_18__** %119, align 8
  %121 = icmp ne %struct.TYPE_18__* %120, null
  br i1 %121, label %122, label %130

122:                                              ; preds = %114
  %123 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %125, align 8
  %127 = icmp ne %struct.TYPE_18__** %126, null
  br i1 %127, label %128, label %130

128:                                              ; preds = %122
  %129 = call i32 @panic(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %130

130:                                              ; preds = %128, %122, %114
  %131 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @MNT_LITER, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %130
  %138 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %138, i32 0, i32 2
  %140 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %141 = load i32, i32* @v_mntvnodes, align 4
  %142 = call i32 @TAILQ_INSERT_HEAD(i32* %139, %struct.TYPE_19__* %140, i32 %141)
  br label %149

143:                                              ; preds = %130
  %144 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %144, i32 0, i32 1
  %146 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %147 = load i32, i32* @v_mntvnodes, align 4
  %148 = call i32 @TAILQ_INSERT_HEAD(i32* %145, %struct.TYPE_19__* %146, i32 %147)
  br label %149

149:                                              ; preds = %143, %137
  %150 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @VNAMED_MOUNT, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %149
  %157 = call i32 @panic(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %158

158:                                              ; preds = %156, %149
  %159 = load i32, i32* @VNAMED_MOUNT, align 4
  %160 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = or i32 %162, %159
  store i32 %163, i32* %161, align 8
  %164 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %165 = call i32 @mount_ref(%struct.TYPE_20__* %164, i32 1)
  %166 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %167 = call i32 @mount_unlock(%struct.TYPE_20__* %166)
  br label %168

168:                                              ; preds = %100, %158, %109
  ret void
}

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @mount_lock_spin(%struct.TYPE_20__*) #1

declare dso_local i32 @mount_drop(%struct.TYPE_20__*, i32) #1

declare dso_local %struct.TYPE_19__* @TAILQ_LAST(i32*, i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @mount_unlock(%struct.TYPE_20__*) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @mount_ref(%struct.TYPE_20__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
