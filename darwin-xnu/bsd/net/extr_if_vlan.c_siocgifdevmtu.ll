; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_vlan.c_siocgifdevmtu.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_vlan.c_siocgifdevmtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.ifdevmtu = type { i32 }
%struct.ifreq = type { %struct.ifdevmtu }

@SIOCGIFDEVMTU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, %struct.ifdevmtu*)* @siocgifdevmtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @siocgifdevmtu(%struct.ifnet* %0, %struct.ifdevmtu* %1) #0 {
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.ifdevmtu*, align 8
  %5 = alloca %struct.ifreq, align 4
  %6 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  store %struct.ifdevmtu* %1, %struct.ifdevmtu** %4, align 8
  %7 = call i32 @bzero(%struct.ifreq* %5, i32 4)
  %8 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %9 = load i32, i32* @SIOCGIFDEVMTU, align 4
  %10 = call i32 @ifnet_ioctl(%struct.ifnet* %8, i32 0, i32 %9, %struct.ifreq* %5)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.ifdevmtu*, %struct.ifdevmtu** %4, align 8
  %15 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %5, i32 0, i32 0
  %16 = bitcast %struct.ifdevmtu* %14 to i8*
  %17 = bitcast %struct.ifdevmtu* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 %17, i64 4, i1 false)
  br label %18

18:                                               ; preds = %13, %2
  %19 = load i32, i32* %6, align 4
  ret i32 %19
}

declare dso_local i32 @bzero(%struct.ifreq*, i32) #1

declare dso_local i32 @ifnet_ioctl(%struct.ifnet*, i32, i32, %struct.ifreq*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
