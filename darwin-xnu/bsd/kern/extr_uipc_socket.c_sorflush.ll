; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket.c_sorflush.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket.c_sorflush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.protosw*, %struct.sockbuf }
%struct.protosw = type { i32, %struct.TYPE_4__*, i32* (%struct.socket*, i32)* }
%struct.TYPE_4__ = type { i32 (i32*)*, i32* }
%struct.sockbuf = type { i32, i32*, i32, i32*, i32*, %struct.TYPE_3__, i32*, i32*, i64, i64, i64, i64, i64, i64, i32 }
%struct.TYPE_3__ = type { i64, i64 }

@sock_evt_flush_read = common dso_local global i32 0, align 4
@SBL_WAIT = common dso_local global i32 0, align 4
@SBL_NOINTR = common dso_local global i32 0, align 4
@SBL_IGNDEFUNCT = common dso_local global i32 0, align 4
@SB_LOCK = common dso_local global i32 0, align 4
@SB_SEL = common dso_local global i32 0, align 4
@SB_KNOTE = common dso_local global i32 0, align 4
@SB_UPCALL = common dso_local global i32 0, align 4
@SB_DROP = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@PR_RIGHTS = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sorflush(%struct.socket* %0) #0 {
  %2 = alloca %struct.socket*, align 8
  %3 = alloca %struct.sockbuf*, align 8
  %4 = alloca %struct.protosw*, align 8
  %5 = alloca %struct.sockbuf, align 8
  store %struct.socket* %0, %struct.socket** %2, align 8
  %6 = load %struct.socket*, %struct.socket** %2, align 8
  %7 = getelementptr inbounds %struct.socket, %struct.socket* %6, i32 0, i32 1
  store %struct.sockbuf* %7, %struct.sockbuf** %3, align 8
  %8 = load %struct.socket*, %struct.socket** %2, align 8
  %9 = getelementptr inbounds %struct.socket, %struct.socket* %8, i32 0, i32 0
  %10 = load %struct.protosw*, %struct.protosw** %9, align 8
  store %struct.protosw* %10, %struct.protosw** %4, align 8
  %11 = load %struct.socket*, %struct.socket** %2, align 8
  %12 = load i32, i32* @sock_evt_flush_read, align 4
  %13 = call i32 @sflt_notify(%struct.socket* %11, i32 %12, i32* null)
  %14 = load %struct.socket*, %struct.socket** %2, align 8
  %15 = call i32 @socantrcvmore(%struct.socket* %14)
  %16 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %17 = load i32, i32* @SBL_WAIT, align 4
  %18 = load i32, i32* @SBL_NOINTR, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @SBL_IGNDEFUNCT, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @sblock(%struct.sockbuf* %16, i32 %21)
  %23 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %24 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @SB_LOCK, align 4
  %27 = and i32 %25, %26
  %28 = call i32 @VERIFY(i32 %27)
  %29 = call i32 @bzero(%struct.sockbuf* %5, i32 128)
  %30 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %31 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %30, i32 0, i32 13
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %5, i32 0, i32 13
  store i64 %32, i64* %33, align 8
  %34 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %35 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %34, i32 0, i32 12
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %5, i32 0, i32 12
  store i64 %36, i64* %37, align 8
  %38 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %39 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %38, i32 0, i32 11
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %5, i32 0, i32 11
  store i64 %40, i64* %41, align 8
  %42 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %43 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %42, i32 0, i32 10
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %5, i32 0, i32 10
  store i64 %44, i64* %45, align 8
  %46 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %47 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %46, i32 0, i32 9
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %5, i32 0, i32 9
  store i64 %48, i64* %49, align 8
  %50 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %51 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %50, i32 0, i32 8
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %5, i32 0, i32 8
  store i64 %52, i64* %53, align 8
  %54 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %55 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %5, i32 0, i32 1
  store i32* %56, i32** %57, align 8
  %58 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %59 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %58, i32 0, i32 7
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %5, i32 0, i32 7
  store i32* %60, i32** %61, align 8
  %62 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %63 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %62, i32 0, i32 6
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %5, i32 0, i32 6
  store i32* %64, i32** %65, align 8
  %66 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %67 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %66, i32 0, i32 14
  %68 = load i32, i32* %67, align 8
  %69 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %5, i32 0, i32 14
  store i32 %68, i32* %69, align 8
  %70 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %71 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %5, i32 0, i32 0
  store i32 %72, i32* %73, align 8
  %74 = load i32, i32* @SB_LOCK, align 4
  %75 = load i32, i32* @SB_SEL, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @SB_KNOTE, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @SB_UPCALL, align 4
  %80 = or i32 %78, %79
  %81 = xor i32 %80, -1
  %82 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %5, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = and i32 %83, %81
  store i32 %84, i32* %82, align 8
  %85 = load i32, i32* @SB_DROP, align 4
  %86 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %5, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = or i32 %87, %85
  store i32 %88, i32* %86, align 8
  %89 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %90 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %89, i32 0, i32 13
  store i64 0, i64* %90, align 8
  %91 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %92 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %91, i32 0, i32 12
  store i64 0, i64* %92, align 8
  %93 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %94 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %93, i32 0, i32 11
  store i64 0, i64* %94, align 8
  %95 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %96 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %95, i32 0, i32 10
  store i64 0, i64* %96, align 8
  %97 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %98 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %97, i32 0, i32 9
  store i64 0, i64* %98, align 8
  %99 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %100 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %99, i32 0, i32 8
  store i64 0, i64* %100, align 8
  %101 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %102 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %101, i32 0, i32 1
  store i32* null, i32** %102, align 8
  %103 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %104 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %103, i32 0, i32 7
  store i32* null, i32** %104, align 8
  %105 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %106 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %105, i32 0, i32 6
  store i32* null, i32** %106, align 8
  %107 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %108 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %107, i32 0, i32 5
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 1
  store i64 0, i64* %109, align 8
  %110 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %111 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %110, i32 0, i32 5
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  store i64 0, i64* %112, align 8
  %113 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %114 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %113, i32 0, i32 4
  store i32* null, i32** %114, align 8
  %115 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %116 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %115, i32 0, i32 3
  store i32* null, i32** %116, align 8
  %117 = load i32, i32* @SB_SEL, align 4
  %118 = load i32, i32* @SB_UPCALL, align 4
  %119 = or i32 %117, %118
  %120 = xor i32 %119, -1
  %121 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %122 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = and i32 %123, %120
  store i32 %124, i32* %122, align 8
  %125 = load i32, i32* @SB_DROP, align 4
  %126 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %127 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = or i32 %128, %125
  store i32 %129, i32* %127, align 8
  %130 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %131 = load i32, i32* @TRUE, align 4
  %132 = call i32 @sbunlock(%struct.sockbuf* %130, i32 %131)
  %133 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %134 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %133, i32 0, i32 2
  %135 = call i32 @selthreadclear(i32* %134)
  %136 = load %struct.protosw*, %struct.protosw** %4, align 8
  %137 = getelementptr inbounds %struct.protosw, %struct.protosw* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @PR_RIGHTS, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %158

142:                                              ; preds = %1
  %143 = load %struct.protosw*, %struct.protosw** %4, align 8
  %144 = getelementptr inbounds %struct.protosw, %struct.protosw* %143, i32 0, i32 1
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  %147 = load i32 (i32*)*, i32 (i32*)** %146, align 8
  %148 = icmp ne i32 (i32*)* %147, null
  br i1 %148, label %149, label %158

149:                                              ; preds = %142
  %150 = load %struct.protosw*, %struct.protosw** %4, align 8
  %151 = getelementptr inbounds %struct.protosw, %struct.protosw* %150, i32 0, i32 1
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  %154 = load i32 (i32*)*, i32 (i32*)** %153, align 8
  %155 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %5, i32 0, i32 1
  %156 = load i32*, i32** %155, align 8
  %157 = call i32 %154(i32* %156)
  br label %158

158:                                              ; preds = %149, %142, %1
  %159 = call i32 @sbrelease(%struct.sockbuf* %5)
  ret void
}

declare dso_local i32 @sflt_notify(%struct.socket*, i32, i32*) #1

declare dso_local i32 @socantrcvmore(%struct.socket*) #1

declare dso_local i32 @sblock(%struct.sockbuf*, i32) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @bzero(%struct.sockbuf*, i32) #1

declare dso_local i32 @sbunlock(%struct.sockbuf*, i32) #1

declare dso_local i32 @selthreadclear(i32*) #1

declare dso_local i32 @sbrelease(%struct.sockbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
