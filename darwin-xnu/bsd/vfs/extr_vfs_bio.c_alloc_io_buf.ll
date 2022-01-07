; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_bio.c_alloc_io_buf.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_bio.c_alloc_io_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i64 }
%struct.TYPE_15__ = type { i64, i64, i64, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, i32, i32, %struct.TYPE_11__*, i8*, i32*, i64, i64, i64, i64, i32*, i32, i64, i64, i64, i64, i64, i32*, i64 }
%struct.TYPE_11__ = type { i64, i32, %struct.TYPE_12__* }

@FALSE = common dso_local global i32 0, align 4
@iobuffer_mtxp = common dso_local global i32 0, align 4
@dead_mountp = common dso_local global %struct.TYPE_12__* null, align 8
@MNTK_VIRTUALDEV = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@MNT_VIRTUALDEV_MAX_IOBUFS = common dso_local global i64 0, align 8
@bufstats = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@VIRTUALDEV_MAX_IOBUFS = common dso_local global i64 0, align 8
@need_iobuffer = common dso_local global i32 0, align 4
@PSPIN = common dso_local global i32 0, align 4
@PRIBIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"alloc_io_buf (1)\00", align 1
@niobuf_headers = common dso_local global i64 0, align 8
@NRESERVEDIOBUFS = common dso_local global i64 0, align 8
@iobufqueue = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"alloc_io_buf (2)\00", align 1
@b_freelist = common dso_local global i32 0, align 4
@BL_BUSY = common dso_local global i32 0, align 4
@BL_IOBUF = common dso_local global i32 0, align 4
@BL_IOBUF_VDEV = common dso_local global i32 0, align 4
@VBLK = common dso_local global i64 0, align 8
@VCHR = common dso_local global i64 0, align 8
@NODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_13__* @alloc_io_buf(%struct.TYPE_11__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %6, align 8
  %8 = load i32, i32* @FALSE, align 4
  store i32 %8, i32* %7, align 4
  %9 = load i32, i32* @iobuffer_mtxp, align 4
  %10 = call i32 @lck_mtx_lock_spin(i32 %9)
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %12 = icmp ne %struct.TYPE_11__* %11, null
  br i1 %12, label %13, label %56

13:                                               ; preds = %2
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  store %struct.TYPE_12__* %16, %struct.TYPE_12__** %6, align 8
  %17 = icmp ne %struct.TYPE_12__* %16, null
  br i1 %17, label %18, label %56

18:                                               ; preds = %13
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** @dead_mountp, align 8
  %21 = icmp ne %struct.TYPE_12__* %19, %20
  br i1 %21, label %22, label %56

22:                                               ; preds = %18
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @MNTK_VIRTUALDEV, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %56

29:                                               ; preds = %22
  %30 = load i32, i32* @TRUE, align 4
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %46, %29
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %31
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @MNT_VIRTUALDEV_MAX_IOBUFS, align 8
  %39 = icmp sgt i64 %37, %38
  br i1 %39, label %44, label %40

40:                                               ; preds = %34, %31
  %41 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @bufstats, i32 0, i32 0), align 8
  %42 = load i64, i64* @VIRTUALDEV_MAX_IOBUFS, align 8
  %43 = icmp sgt i64 %41, %42
  br label %44

44:                                               ; preds = %40, %34
  %45 = phi i1 [ true, %34 ], [ %43, %40 ]
  br i1 %45, label %46, label %55

46:                                               ; preds = %44
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @bufstats, i32 0, i32 3), align 8
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @bufstats, i32 0, i32 3), align 8
  store i32 1, i32* @need_iobuffer, align 4
  %49 = load i32, i32* @iobuffer_mtxp, align 4
  %50 = load i32, i32* @PSPIN, align 4
  %51 = load i32, i32* @PRIBIO, align 4
  %52 = add nsw i32 %51, 1
  %53 = or i32 %50, %52
  %54 = call i32 @msleep(i32* @need_iobuffer, i32 %49, i32 %53, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32* null)
  br label %31

55:                                               ; preds = %44
  br label %56

56:                                               ; preds = %55, %22, %18, %13, %2
  br label %57

57:                                               ; preds = %71, %56
  %58 = load i64, i64* @niobuf_headers, align 8
  %59 = load i64, i64* @NRESERVEDIOBUFS, align 8
  %60 = sub nsw i64 %58, %59
  %61 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @bufstats, i32 0, i32 1), align 8
  %62 = icmp slt i64 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %63, %57
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @iobufqueue, i32 0, i32 0), align 8
  store %struct.TYPE_13__* %67, %struct.TYPE_13__** %5, align 8
  %68 = icmp eq %struct.TYPE_13__* %67, null
  br label %69

69:                                               ; preds = %66, %63
  %70 = phi i1 [ true, %63 ], [ %68, %66 ]
  br i1 %70, label %71, label %80

71:                                               ; preds = %69
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @bufstats, i32 0, i32 3), align 8
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @bufstats, i32 0, i32 3), align 8
  store i32 1, i32* @need_iobuffer, align 4
  %74 = load i32, i32* @iobuffer_mtxp, align 4
  %75 = load i32, i32* @PSPIN, align 4
  %76 = load i32, i32* @PRIBIO, align 4
  %77 = add nsw i32 %76, 1
  %78 = or i32 %75, %77
  %79 = call i32 @msleep(i32* @need_iobuffer, i32 %74, i32 %78, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32* null)
  br label %57

80:                                               ; preds = %69
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %82 = load i32, i32* @b_freelist, align 4
  %83 = call i32 @TAILQ_REMOVE(%struct.TYPE_14__* @iobufqueue, %struct.TYPE_13__* %81, i32 %82)
  %84 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @bufstats, i32 0, i32 1), align 8
  %85 = add nsw i64 %84, 1
  store i64 %85, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @bufstats, i32 0, i32 1), align 8
  %86 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @bufstats, i32 0, i32 1), align 8
  %87 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @bufstats, i32 0, i32 2), align 8
  %88 = icmp sgt i64 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %80
  %90 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @bufstats, i32 0, i32 1), align 8
  store i64 %90, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @bufstats, i32 0, i32 2), align 8
  br label %91

91:                                               ; preds = %89, %80
  %92 = load i32, i32* %7, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %91
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = add nsw i64 %97, 1
  store i64 %98, i64* %96, align 8
  %99 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @bufstats, i32 0, i32 0), align 8
  %100 = add nsw i64 %99, 1
  store i64 %100, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @bufstats, i32 0, i32 0), align 8
  br label %101

101:                                              ; preds = %94, %91
  %102 = load i32, i32* @iobuffer_mtxp, align 4
  %103 = call i32 @lck_mtx_unlock(i32 %102)
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 19
  store i64 0, i64* %105, align 8
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 18
  store i32* null, i32** %107, align 8
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 17
  store i64 0, i64* %109, align 8
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 16
  store i64 0, i64* %111, align 8
  %112 = load i32, i32* @BL_BUSY, align 4
  %113 = load i32, i32* @BL_IOBUF, align 4
  %114 = or i32 %112, %113
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 8
  %117 = load i32, i32* %7, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %101
  %120 = load i32, i32* @BL_IOBUF_VDEV, align 4
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = or i32 %123, %120
  store i32 %124, i32* %122, align 8
  br label %125

125:                                              ; preds = %119, %101
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 15
  store i64 0, i64* %127, align 8
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 13
  store i64 0, i64* %129, align 8
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 14
  store i64 0, i64* %131, align 8
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 11
  store i32* null, i32** %133, align 8
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 10
  store i64 0, i64* %135, align 8
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 9
  store i64 0, i64* %137, align 8
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 8
  store i64 0, i64* %139, align 8
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 7
  store i64 0, i64* %141, align 8
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 6
  store i32* null, i32** %143, align 8
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 5
  store i8* null, i8** %145, align 8
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 4
  store %struct.TYPE_11__* %146, %struct.TYPE_11__** %148, align 8
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 3
  %151 = call i32 @bzero(i32* %150, i32 4)
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %153 = icmp ne %struct.TYPE_11__* %152, null
  br i1 %153, label %154, label %172

154:                                              ; preds = %125
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @VBLK, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %166, label %160

160:                                              ; preds = %154
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @VCHR, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %172

166:                                              ; preds = %160, %154
  %167 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 2
  store i32 %169, i32* %171, align 8
  br label %176

172:                                              ; preds = %160, %125
  %173 = load i32, i32* @NODEV, align 4
  %174 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 2
  store i32 %173, i32* %175, align 8
  br label %176

176:                                              ; preds = %172, %166
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  ret %struct.TYPE_13__* %177
}

declare dso_local i32 @lck_mtx_lock_spin(i32) #1

declare dso_local i32 @msleep(i32*, i32, i32, i8*, i32*) #1

declare dso_local i32 @TAILQ_REMOVE(%struct.TYPE_14__*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

declare dso_local i32 @bzero(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
