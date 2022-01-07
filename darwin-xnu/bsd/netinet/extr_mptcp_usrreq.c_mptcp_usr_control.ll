; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp_usrreq.c_mptcp_usr_control.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp_usrreq.c_mptcp_usr_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.so_cinforeq64 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ifnet = type { i32 }
%struct.proc = type { i32 }
%struct.mppcb = type { i64 }
%struct.mptses = type { i32 }
%struct.so_aidreq32 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.so_aidreq64 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.so_cidreq32 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.so_cidreq64 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.so_cinforeq32 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@MPPCB_STATE_DEAD = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, i32, %struct.so_cinforeq64*, %struct.ifnet*, %struct.proc*)* @mptcp_usr_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mptcp_usr_control(%struct.socket* %0, i32 %1, %struct.so_cinforeq64* %2, %struct.ifnet* %3, %struct.proc* %4) #0 {
  %6 = alloca %struct.socket*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.so_cinforeq64*, align 8
  %9 = alloca %struct.ifnet*, align 8
  %10 = alloca %struct.proc*, align 8
  %11 = alloca %struct.mppcb*, align 8
  %12 = alloca %struct.mptses*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.so_aidreq32, align 4
  %15 = alloca %struct.so_aidreq64, align 4
  %16 = alloca %struct.so_cidreq32, align 4
  %17 = alloca %struct.so_cidreq64, align 4
  %18 = alloca %struct.so_cinforeq32, align 4
  %19 = alloca %struct.so_cinforeq64, align 4
  store %struct.socket* %0, %struct.socket** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.so_cinforeq64* %2, %struct.so_cinforeq64** %8, align 8
  store %struct.ifnet* %3, %struct.ifnet** %9, align 8
  store %struct.proc* %4, %struct.proc** %10, align 8
  %20 = load %struct.socket*, %struct.socket** %6, align 8
  %21 = call %struct.mppcb* @mpsotomppcb(%struct.socket* %20)
  store %struct.mppcb* %21, %struct.mppcb** %11, align 8
  store i32 0, i32* %13, align 4
  %22 = load %struct.mppcb*, %struct.mppcb** %11, align 8
  %23 = icmp eq %struct.mppcb* %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %5
  %25 = load %struct.mppcb*, %struct.mppcb** %11, align 8
  %26 = getelementptr inbounds %struct.mppcb, %struct.mppcb* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @MPPCB_STATE_DEAD, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %24, %5
  %31 = load i32, i32* @EINVAL, align 4
  store i32 %31, i32* %13, align 4
  br label %165

32:                                               ; preds = %24
  %33 = load %struct.mppcb*, %struct.mppcb** %11, align 8
  %34 = call %struct.mptses* @mptompte(%struct.mppcb* %33)
  store %struct.mptses* %34, %struct.mptses** %12, align 8
  %35 = load %struct.mptses*, %struct.mptses** %12, align 8
  %36 = icmp ne %struct.mptses* %35, null
  %37 = zext i1 %36 to i32
  %38 = call i32 @VERIFY(i32 %37)
  %39 = load %struct.mptses*, %struct.mptses** %12, align 8
  %40 = call i32 @mpte_lock_assert_held(%struct.mptses* %39)
  %41 = load i32, i32* %7, align 4
  switch i32 %41, label %162 [
    i32 133, label %42
    i32 132, label %58
    i32 131, label %74
    i32 130, label %92
    i32 129, label %110
    i32 128, label %137
  ]

42:                                               ; preds = %32
  %43 = load %struct.so_cinforeq64*, %struct.so_cinforeq64** %8, align 8
  %44 = bitcast %struct.so_aidreq32* %14 to %struct.so_cinforeq64*
  %45 = call i32 @bcopy(%struct.so_cinforeq64* %43, %struct.so_cinforeq64* %44, i32 64)
  %46 = load %struct.mptses*, %struct.mptses** %12, align 8
  %47 = getelementptr inbounds %struct.so_aidreq32, %struct.so_aidreq32* %14, i32 0, i32 15
  %48 = getelementptr inbounds %struct.so_aidreq32, %struct.so_aidreq32* %14, i32 0, i32 14
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @mptcp_getassocids(%struct.mptses* %46, i32* %47, i32 %49)
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %13, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %42
  %54 = bitcast %struct.so_aidreq32* %14 to %struct.so_cinforeq64*
  %55 = load %struct.so_cinforeq64*, %struct.so_cinforeq64** %8, align 8
  %56 = call i32 @bcopy(%struct.so_cinforeq64* %54, %struct.so_cinforeq64* %55, i32 64)
  br label %57

57:                                               ; preds = %53, %42
  br label %164

58:                                               ; preds = %32
  %59 = load %struct.so_cinforeq64*, %struct.so_cinforeq64** %8, align 8
  %60 = bitcast %struct.so_aidreq64* %15 to %struct.so_cinforeq64*
  %61 = call i32 @bcopy(%struct.so_cinforeq64* %59, %struct.so_cinforeq64* %60, i32 64)
  %62 = load %struct.mptses*, %struct.mptses** %12, align 8
  %63 = getelementptr inbounds %struct.so_aidreq64, %struct.so_aidreq64* %15, i32 0, i32 15
  %64 = getelementptr inbounds %struct.so_aidreq64, %struct.so_aidreq64* %15, i32 0, i32 14
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @mptcp_getassocids(%struct.mptses* %62, i32* %63, i32 %65)
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %13, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %58
  %70 = bitcast %struct.so_aidreq64* %15 to %struct.so_cinforeq64*
  %71 = load %struct.so_cinforeq64*, %struct.so_cinforeq64** %8, align 8
  %72 = call i32 @bcopy(%struct.so_cinforeq64* %70, %struct.so_cinforeq64* %71, i32 64)
  br label %73

73:                                               ; preds = %69, %58
  br label %164

74:                                               ; preds = %32
  %75 = load %struct.so_cinforeq64*, %struct.so_cinforeq64** %8, align 8
  %76 = bitcast %struct.so_cidreq32* %16 to %struct.so_cinforeq64*
  %77 = call i32 @bcopy(%struct.so_cinforeq64* %75, %struct.so_cinforeq64* %76, i32 64)
  %78 = load %struct.mptses*, %struct.mptses** %12, align 8
  %79 = getelementptr inbounds %struct.so_cidreq32, %struct.so_cidreq32* %16, i32 0, i32 13
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds %struct.so_cidreq32, %struct.so_cidreq32* %16, i32 0, i32 12
  %82 = getelementptr inbounds %struct.so_cidreq32, %struct.so_cidreq32* %16, i32 0, i32 11
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @mptcp_getconnids(%struct.mptses* %78, i32 %80, i32* %81, i32 %83)
  store i32 %84, i32* %13, align 4
  %85 = load i32, i32* %13, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %74
  %88 = bitcast %struct.so_cidreq32* %16 to %struct.so_cinforeq64*
  %89 = load %struct.so_cinforeq64*, %struct.so_cinforeq64** %8, align 8
  %90 = call i32 @bcopy(%struct.so_cinforeq64* %88, %struct.so_cinforeq64* %89, i32 64)
  br label %91

91:                                               ; preds = %87, %74
  br label %164

92:                                               ; preds = %32
  %93 = load %struct.so_cinforeq64*, %struct.so_cinforeq64** %8, align 8
  %94 = bitcast %struct.so_cidreq64* %17 to %struct.so_cinforeq64*
  %95 = call i32 @bcopy(%struct.so_cinforeq64* %93, %struct.so_cinforeq64* %94, i32 64)
  %96 = load %struct.mptses*, %struct.mptses** %12, align 8
  %97 = getelementptr inbounds %struct.so_cidreq64, %struct.so_cidreq64* %17, i32 0, i32 13
  %98 = load i32, i32* %97, align 4
  %99 = getelementptr inbounds %struct.so_cidreq64, %struct.so_cidreq64* %17, i32 0, i32 12
  %100 = getelementptr inbounds %struct.so_cidreq64, %struct.so_cidreq64* %17, i32 0, i32 11
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @mptcp_getconnids(%struct.mptses* %96, i32 %98, i32* %99, i32 %101)
  store i32 %102, i32* %13, align 4
  %103 = load i32, i32* %13, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %92
  %106 = bitcast %struct.so_cidreq64* %17 to %struct.so_cinforeq64*
  %107 = load %struct.so_cinforeq64*, %struct.so_cinforeq64** %8, align 8
  %108 = call i32 @bcopy(%struct.so_cinforeq64* %106, %struct.so_cinforeq64* %107, i32 64)
  br label %109

109:                                              ; preds = %105, %92
  br label %164

110:                                              ; preds = %32
  %111 = load %struct.so_cinforeq64*, %struct.so_cinforeq64** %8, align 8
  %112 = bitcast %struct.so_cinforeq32* %18 to %struct.so_cinforeq64*
  %113 = call i32 @bcopy(%struct.so_cinforeq64* %111, %struct.so_cinforeq64* %112, i32 64)
  %114 = load %struct.mptses*, %struct.mptses** %12, align 8
  %115 = getelementptr inbounds %struct.so_cinforeq32, %struct.so_cinforeq32* %18, i32 0, i32 10
  %116 = getelementptr inbounds %struct.so_cinforeq32, %struct.so_cinforeq32* %18, i32 0, i32 9
  %117 = getelementptr inbounds %struct.so_cinforeq32, %struct.so_cinforeq32* %18, i32 0, i32 8
  %118 = getelementptr inbounds %struct.so_cinforeq32, %struct.so_cinforeq32* %18, i32 0, i32 7
  %119 = getelementptr inbounds %struct.so_cinforeq32, %struct.so_cinforeq32* %18, i32 0, i32 6
  %120 = load i32, i32* %119, align 4
  %121 = getelementptr inbounds %struct.so_cinforeq32, %struct.so_cinforeq32* %18, i32 0, i32 5
  %122 = getelementptr inbounds %struct.so_cinforeq32, %struct.so_cinforeq32* %18, i32 0, i32 4
  %123 = load i32, i32* %122, align 4
  %124 = getelementptr inbounds %struct.so_cinforeq32, %struct.so_cinforeq32* %18, i32 0, i32 3
  %125 = getelementptr inbounds %struct.so_cinforeq32, %struct.so_cinforeq32* %18, i32 0, i32 2
  %126 = getelementptr inbounds %struct.so_cinforeq32, %struct.so_cinforeq32* %18, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = getelementptr inbounds %struct.so_cinforeq32, %struct.so_cinforeq32* %18, i32 0, i32 0
  %129 = call i32 @mptcp_getconninfo(%struct.mptses* %114, i32* %115, i32* %116, i32* %117, i32* %118, i32 %120, i32* %121, i32 %123, i32* %124, i32* %125, i32 %127, i32* %128)
  store i32 %129, i32* %13, align 4
  %130 = load i32, i32* %13, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %110
  %133 = bitcast %struct.so_cinforeq32* %18 to %struct.so_cinforeq64*
  %134 = load %struct.so_cinforeq64*, %struct.so_cinforeq64** %8, align 8
  %135 = call i32 @bcopy(%struct.so_cinforeq64* %133, %struct.so_cinforeq64* %134, i32 64)
  br label %136

136:                                              ; preds = %132, %110
  br label %164

137:                                              ; preds = %32
  %138 = load %struct.so_cinforeq64*, %struct.so_cinforeq64** %8, align 8
  %139 = call i32 @bcopy(%struct.so_cinforeq64* %138, %struct.so_cinforeq64* %19, i32 64)
  %140 = load %struct.mptses*, %struct.mptses** %12, align 8
  %141 = getelementptr inbounds %struct.so_cinforeq64, %struct.so_cinforeq64* %19, i32 0, i32 10
  %142 = getelementptr inbounds %struct.so_cinforeq64, %struct.so_cinforeq64* %19, i32 0, i32 9
  %143 = getelementptr inbounds %struct.so_cinforeq64, %struct.so_cinforeq64* %19, i32 0, i32 8
  %144 = getelementptr inbounds %struct.so_cinforeq64, %struct.so_cinforeq64* %19, i32 0, i32 7
  %145 = getelementptr inbounds %struct.so_cinforeq64, %struct.so_cinforeq64* %19, i32 0, i32 6
  %146 = load i32, i32* %145, align 4
  %147 = getelementptr inbounds %struct.so_cinforeq64, %struct.so_cinforeq64* %19, i32 0, i32 5
  %148 = getelementptr inbounds %struct.so_cinforeq64, %struct.so_cinforeq64* %19, i32 0, i32 4
  %149 = load i32, i32* %148, align 4
  %150 = getelementptr inbounds %struct.so_cinforeq64, %struct.so_cinforeq64* %19, i32 0, i32 3
  %151 = getelementptr inbounds %struct.so_cinforeq64, %struct.so_cinforeq64* %19, i32 0, i32 2
  %152 = getelementptr inbounds %struct.so_cinforeq64, %struct.so_cinforeq64* %19, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = getelementptr inbounds %struct.so_cinforeq64, %struct.so_cinforeq64* %19, i32 0, i32 0
  %155 = call i32 @mptcp_getconninfo(%struct.mptses* %140, i32* %141, i32* %142, i32* %143, i32* %144, i32 %146, i32* %147, i32 %149, i32* %150, i32* %151, i32 %153, i32* %154)
  store i32 %155, i32* %13, align 4
  %156 = load i32, i32* %13, align 4
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %137
  %159 = load %struct.so_cinforeq64*, %struct.so_cinforeq64** %8, align 8
  %160 = call i32 @bcopy(%struct.so_cinforeq64* %19, %struct.so_cinforeq64* %159, i32 64)
  br label %161

161:                                              ; preds = %158, %137
  br label %164

162:                                              ; preds = %32
  %163 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %163, i32* %13, align 4
  br label %164

164:                                              ; preds = %162, %161, %136, %109, %91, %73, %57
  br label %165

165:                                              ; preds = %164, %30
  %166 = load i32, i32* %13, align 4
  ret i32 %166
}

declare dso_local %struct.mppcb* @mpsotomppcb(%struct.socket*) #1

declare dso_local %struct.mptses* @mptompte(%struct.mppcb*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @mpte_lock_assert_held(%struct.mptses*) #1

declare dso_local i32 @bcopy(%struct.so_cinforeq64*, %struct.so_cinforeq64*, i32) #1

declare dso_local i32 @mptcp_getassocids(%struct.mptses*, i32*, i32) #1

declare dso_local i32 @mptcp_getconnids(%struct.mptses*, i32, i32*, i32) #1

declare dso_local i32 @mptcp_getconninfo(%struct.mptses*, i32*, i32*, i32*, i32*, i32, i32*, i32, i32*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
