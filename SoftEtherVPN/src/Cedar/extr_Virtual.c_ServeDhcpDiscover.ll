; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_ServeDhcpDiscover.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_ServeDhcpDiscover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i64 }
%struct.TYPE_19__ = type { i64, i32 }
%struct.TYPE_18__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ServeDhcpDiscover(%struct.TYPE_17__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %13 = icmp eq %struct.TYPE_17__* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32*, i32** %6, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %14, %3
  store i64 0, i64* %4, align 8
  br label %147

18:                                               ; preds = %14
  %19 = load i64, i64* %7, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %82

21:                                               ; preds = %18
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %23 = load i64, i64* %7, align 8
  %24 = call %struct.TYPE_19__* @SearchDhcpLeaseByIp(%struct.TYPE_17__* %22, i64 %23)
  store %struct.TYPE_19__* %24, %struct.TYPE_19__** %9, align 8
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %26 = icmp eq %struct.TYPE_19__* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %29 = load i64, i64* %7, align 8
  %30 = call %struct.TYPE_19__* @SearchDhcpPendingLeaseByIp(%struct.TYPE_17__* %28, i64 %29)
  store %struct.TYPE_19__* %30, %struct.TYPE_19__** %9, align 8
  br label %31

31:                                               ; preds = %27, %21
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %33 = icmp ne %struct.TYPE_19__* %32, null
  br i1 %33, label %34, label %61

34:                                               ; preds = %31
  %35 = load i32*, i32** %6, align 8
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @Cmp(i32* %35, i32 %38, i32 6)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %60

41:                                               ; preds = %34
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i64 @Endian32(i64 %44)
  %46 = load i64, i64* %7, align 8
  %47 = call i64 @Endian32(i64 %46)
  %48 = icmp sle i64 %45, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %41
  %50 = load i64, i64* %7, align 8
  %51 = call i64 @Endian32(i64 %50)
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = call i64 @Endian32(i64 %54)
  %56 = icmp sle i64 %51, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %49
  %58 = load i64, i64* %7, align 8
  store i64 %58, i64* %8, align 8
  br label %59

59:                                               ; preds = %57, %49, %41
  br label %60

60:                                               ; preds = %59, %34
  br label %81

61:                                               ; preds = %31
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i64 @Endian32(i64 %64)
  %66 = load i64, i64* %7, align 8
  %67 = call i64 @Endian32(i64 %66)
  %68 = icmp sle i64 %65, %67
  br i1 %68, label %69, label %79

69:                                               ; preds = %61
  %70 = load i64, i64* %7, align 8
  %71 = call i64 @Endian32(i64 %70)
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = call i64 @Endian32(i64 %74)
  %76 = icmp sle i64 %71, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %69
  %78 = load i64, i64* %7, align 8
  store i64 %78, i64* %8, align 8
  br label %80

79:                                               ; preds = %69, %61
  br label %80

80:                                               ; preds = %79, %77
  br label %81

81:                                               ; preds = %80, %60
  br label %82

82:                                               ; preds = %81, %18
  %83 = load i64, i64* %8, align 8
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %124

85:                                               ; preds = %82
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %87 = load i32*, i32** %6, align 8
  %88 = call %struct.TYPE_19__* @SearchDhcpLeaseByMac(%struct.TYPE_17__* %86, i32* %87)
  store %struct.TYPE_19__* %88, %struct.TYPE_19__** %10, align 8
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %90 = icmp eq %struct.TYPE_19__* %89, null
  br i1 %90, label %91, label %95

91:                                               ; preds = %85
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %93 = load i32*, i32** %6, align 8
  %94 = call %struct.TYPE_19__* @SearchDhcpPendingLeaseByMac(%struct.TYPE_17__* %92, i32* %93)
  store %struct.TYPE_19__* %94, %struct.TYPE_19__** %10, align 8
  br label %95

95:                                               ; preds = %91, %85
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %97 = icmp ne %struct.TYPE_19__* %96, null
  br i1 %97, label %98, label %123

98:                                               ; preds = %95
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = call i64 @Endian32(i64 %101)
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = call i64 @Endian32(i64 %105)
  %107 = icmp sle i64 %102, %106
  br i1 %107, label %108, label %122

108:                                              ; preds = %98
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = call i64 @Endian32(i64 %111)
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = call i64 @Endian32(i64 %115)
  %117 = icmp sle i64 %112, %116
  br i1 %117, label %118, label %122

118:                                              ; preds = %108
  %119 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  store i64 %121, i64* %8, align 8
  br label %122

122:                                              ; preds = %118, %108, %98
  br label %123

123:                                              ; preds = %122, %95
  br label %124

124:                                              ; preds = %123, %82
  %125 = load i64, i64* %8, align 8
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %145

127:                                              ; preds = %124
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %129 = call %struct.TYPE_18__* @NatGetHubOption(%struct.TYPE_17__* %128)
  store %struct.TYPE_18__* %129, %struct.TYPE_18__** %11, align 8
  %130 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %131 = icmp ne %struct.TYPE_18__* %130, null
  br i1 %131, label %132, label %141

132:                                              ; preds = %127
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %132
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %139 = load i32*, i32** %6, align 8
  %140 = call i64 @GetFreeDhcpIpAddressByRandom(%struct.TYPE_17__* %138, i32* %139)
  store i64 %140, i64* %8, align 8
  br label %144

141:                                              ; preds = %132, %127
  %142 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %143 = call i64 @GetFreeDhcpIpAddress(%struct.TYPE_17__* %142)
  store i64 %143, i64* %8, align 8
  br label %144

144:                                              ; preds = %141, %137
  br label %145

145:                                              ; preds = %144, %124
  %146 = load i64, i64* %8, align 8
  store i64 %146, i64* %4, align 8
  br label %147

147:                                              ; preds = %145, %17
  %148 = load i64, i64* %4, align 8
  ret i64 %148
}

declare dso_local %struct.TYPE_19__* @SearchDhcpLeaseByIp(%struct.TYPE_17__*, i64) #1

declare dso_local %struct.TYPE_19__* @SearchDhcpPendingLeaseByIp(%struct.TYPE_17__*, i64) #1

declare dso_local i64 @Cmp(i32*, i32, i32) #1

declare dso_local i64 @Endian32(i64) #1

declare dso_local %struct.TYPE_19__* @SearchDhcpLeaseByMac(%struct.TYPE_17__*, i32*) #1

declare dso_local %struct.TYPE_19__* @SearchDhcpPendingLeaseByMac(%struct.TYPE_17__*, i32*) #1

declare dso_local %struct.TYPE_18__* @NatGetHubOption(%struct.TYPE_17__*) #1

declare dso_local i64 @GetFreeDhcpIpAddressByRandom(%struct.TYPE_17__*, i32*) #1

declare dso_local i64 @GetFreeDhcpIpAddress(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
