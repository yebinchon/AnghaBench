; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket.c_resume_proc_sockets.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket.c_resume_proc_sockets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.filedesc* }
%struct.filedesc = type { i32, i32*, %struct.fileproc** }
%struct.fileproc = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.socket = type { i32 }

@P_LXBKIDLEINPROG = common dso_local global i32 0, align 4
@UF_RESERVED = common dso_local global i32 0, align 4
@DTYPE_SOCKET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @resume_proc_sockets(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.filedesc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fileproc*, align 8
  %6 = alloca %struct.socket*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @P_LXBKIDLEINPROG, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %75

13:                                               ; preds = %1
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %15 = call i32 @proc_fdlock(%struct.TYPE_7__* %14)
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = load %struct.filedesc*, %struct.filedesc** %17, align 8
  store %struct.filedesc* %18, %struct.filedesc** %3, align 8
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %64, %13
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.filedesc*, %struct.filedesc** %3, align 8
  %22 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %67

25:                                               ; preds = %19
  %26 = load %struct.filedesc*, %struct.filedesc** %3, align 8
  %27 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %26, i32 0, i32 2
  %28 = load %struct.fileproc**, %struct.fileproc*** %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.fileproc*, %struct.fileproc** %28, i64 %30
  %32 = load %struct.fileproc*, %struct.fileproc** %31, align 8
  store %struct.fileproc* %32, %struct.fileproc** %5, align 8
  %33 = load %struct.fileproc*, %struct.fileproc** %5, align 8
  %34 = icmp eq %struct.fileproc* %33, null
  br i1 %34, label %53, label %35

35:                                               ; preds = %25
  %36 = load %struct.filedesc*, %struct.filedesc** %3, align 8
  %37 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @UF_RESERVED, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %35
  %47 = load %struct.fileproc*, %struct.fileproc** %5, align 8
  %48 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %47, i32 0, i32 0
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = call i64 @FILEGLOB_DTYPE(%struct.TYPE_8__* %49)
  %51 = load i64, i64* @DTYPE_SOCKET, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %46, %35, %25
  br label %64

54:                                               ; preds = %46
  %55 = load %struct.fileproc*, %struct.fileproc** %5, align 8
  %56 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %55, i32 0, i32 0
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to %struct.socket*
  store %struct.socket* %60, %struct.socket** %6, align 8
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %62 = load %struct.socket*, %struct.socket** %6, align 8
  %63 = call i32 @soresume(%struct.TYPE_7__* %61, %struct.socket* %62, i32 0)
  br label %64

64:                                               ; preds = %54, %53
  %65 = load i32, i32* %4, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %4, align 4
  br label %19

67:                                               ; preds = %19
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %69 = call i32 @proc_fdunlock(%struct.TYPE_7__* %68)
  %70 = load i32, i32* @P_LXBKIDLEINPROG, align 4
  %71 = xor i32 %70, -1
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = call i32 @OSBitAndAtomic(i32 %71, i32* %73)
  br label %75

75:                                               ; preds = %67, %1
  ret void
}

declare dso_local i32 @proc_fdlock(%struct.TYPE_7__*) #1

declare dso_local i64 @FILEGLOB_DTYPE(%struct.TYPE_8__*) #1

declare dso_local i32 @soresume(%struct.TYPE_7__*, %struct.socket*, i32) #1

declare dso_local i32 @proc_fdunlock(%struct.TYPE_7__*) #1

declare dso_local i32 @OSBitAndAtomic(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
