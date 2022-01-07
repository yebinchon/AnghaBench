; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_netsrc.c_netsrc_common.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_netsrc.c_netsrc_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtentry = type { i32, %struct.TYPE_8__*, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.nstat_counts* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.nstat_counts* }
%struct.nstat_counts = type { i32, i32, i32 }
%struct.netsrc_rep = type { i32, i32, i32, i32, i32 }

@IFEF_AWDL = common dso_local global i32 0, align 4
@NETSRC_FLAG_AWDL = common dso_local global i32 0, align 4
@RTF_LOCAL = common dso_local global i32 0, align 4
@NETSRC_FLAG_DIRECT = common dso_local global i32 0, align 4
@RTF_GATEWAY = common dso_local global i32 0, align 4
@IFF_POINTOPOINT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtentry*, %struct.netsrc_rep*)* @netsrc_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netsrc_common(%struct.rtentry* %0, %struct.netsrc_rep* %1) #0 {
  %3 = alloca %struct.rtentry*, align 8
  %4 = alloca %struct.netsrc_rep*, align 8
  %5 = alloca %struct.nstat_counts*, align 8
  store %struct.rtentry* %0, %struct.rtentry** %3, align 8
  store %struct.netsrc_rep* %1, %struct.netsrc_rep** %4, align 8
  %6 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %7 = icmp ne %struct.rtentry* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  br label %151

9:                                                ; preds = %2
  %10 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %11 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %10, i32 0, i32 4
  %12 = load %struct.nstat_counts*, %struct.nstat_counts** %11, align 8
  store %struct.nstat_counts* %12, %struct.nstat_counts** %5, align 8
  %13 = load %struct.nstat_counts*, %struct.nstat_counts** %5, align 8
  %14 = icmp ne %struct.nstat_counts* %13, null
  br i1 %14, label %15, label %31

15:                                               ; preds = %9
  %16 = load %struct.nstat_counts*, %struct.nstat_counts** %5, align 8
  %17 = getelementptr inbounds %struct.nstat_counts, %struct.nstat_counts* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.netsrc_rep*, %struct.netsrc_rep** %4, align 8
  %20 = getelementptr inbounds %struct.netsrc_rep, %struct.netsrc_rep* %19, i32 0, i32 4
  store i32 %18, i32* %20, align 4
  %21 = load %struct.nstat_counts*, %struct.nstat_counts** %5, align 8
  %22 = getelementptr inbounds %struct.nstat_counts, %struct.nstat_counts* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.netsrc_rep*, %struct.netsrc_rep** %4, align 8
  %25 = getelementptr inbounds %struct.netsrc_rep, %struct.netsrc_rep* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 4
  %26 = load %struct.nstat_counts*, %struct.nstat_counts** %5, align 8
  %27 = getelementptr inbounds %struct.nstat_counts, %struct.nstat_counts* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.netsrc_rep*, %struct.netsrc_rep** %4, align 8
  %30 = getelementptr inbounds %struct.netsrc_rep, %struct.netsrc_rep* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  br label %31

31:                                               ; preds = %15, %9
  %32 = load %struct.netsrc_rep*, %struct.netsrc_rep** %4, align 8
  %33 = getelementptr inbounds %struct.netsrc_rep, %struct.netsrc_rep* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %71

36:                                               ; preds = %31
  %37 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %38 = call i32 @RT_LOCK(%struct.rtentry* %37)
  %39 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %40 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %39, i32 0, i32 3
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = icmp ne %struct.TYPE_5__* %41, null
  br i1 %42, label %43, label %68

43:                                               ; preds = %36
  %44 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %45 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %44, i32 0, i32 3
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load %struct.nstat_counts*, %struct.nstat_counts** %47, align 8
  store %struct.nstat_counts* %48, %struct.nstat_counts** %5, align 8
  %49 = load %struct.nstat_counts*, %struct.nstat_counts** %5, align 8
  %50 = icmp ne %struct.nstat_counts* %49, null
  br i1 %50, label %51, label %67

51:                                               ; preds = %43
  %52 = load %struct.nstat_counts*, %struct.nstat_counts** %5, align 8
  %53 = getelementptr inbounds %struct.nstat_counts, %struct.nstat_counts* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.netsrc_rep*, %struct.netsrc_rep** %4, align 8
  %56 = getelementptr inbounds %struct.netsrc_rep, %struct.netsrc_rep* %55, i32 0, i32 4
  store i32 %54, i32* %56, align 4
  %57 = load %struct.nstat_counts*, %struct.nstat_counts** %5, align 8
  %58 = getelementptr inbounds %struct.nstat_counts, %struct.nstat_counts* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.netsrc_rep*, %struct.netsrc_rep** %4, align 8
  %61 = getelementptr inbounds %struct.netsrc_rep, %struct.netsrc_rep* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 4
  %62 = load %struct.nstat_counts*, %struct.nstat_counts** %5, align 8
  %63 = getelementptr inbounds %struct.nstat_counts, %struct.nstat_counts* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.netsrc_rep*, %struct.netsrc_rep** %4, align 8
  %66 = getelementptr inbounds %struct.netsrc_rep, %struct.netsrc_rep* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 4
  br label %67

67:                                               ; preds = %51, %43
  br label %68

68:                                               ; preds = %67, %36
  %69 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %70 = call i32 @RT_UNLOCK(%struct.rtentry* %69)
  br label %71

71:                                               ; preds = %68, %31
  %72 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %73 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %72, i32 0, i32 2
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = icmp ne %struct.TYPE_6__* %74, null
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %78 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %77, i32 0, i32 2
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  br label %83

82:                                               ; preds = %71
  br label %83

83:                                               ; preds = %82, %76
  %84 = phi i32 [ %81, %76 ], [ 0, %82 ]
  %85 = load %struct.netsrc_rep*, %struct.netsrc_rep** %4, align 8
  %86 = getelementptr inbounds %struct.netsrc_rep, %struct.netsrc_rep* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  %87 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %88 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %87, i32 0, i32 2
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @IFEF_AWDL, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %83
  %96 = load i32, i32* @NETSRC_FLAG_AWDL, align 4
  %97 = load %struct.netsrc_rep*, %struct.netsrc_rep** %4, align 8
  %98 = getelementptr inbounds %struct.netsrc_rep, %struct.netsrc_rep* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 4
  br label %101

101:                                              ; preds = %95, %83
  %102 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %103 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @RTF_LOCAL, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %101
  %109 = load i32, i32* @NETSRC_FLAG_DIRECT, align 4
  %110 = load %struct.netsrc_rep*, %struct.netsrc_rep** %4, align 8
  %111 = getelementptr inbounds %struct.netsrc_rep, %struct.netsrc_rep* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = or i32 %112, %109
  store i32 %113, i32* %111, align 4
  br label %151

114:                                              ; preds = %101
  %115 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %116 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @RTF_GATEWAY, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %150, label %121

121:                                              ; preds = %114
  %122 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %123 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %122, i32 0, i32 1
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %123, align 8
  %125 = icmp ne %struct.TYPE_8__* %124, null
  br i1 %125, label %126, label %150

126:                                              ; preds = %121
  %127 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %128 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %127, i32 0, i32 1
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %130, align 8
  %132 = icmp ne %struct.TYPE_7__* %131, null
  br i1 %132, label %133, label %150

133:                                              ; preds = %126
  %134 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %135 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %134, i32 0, i32 1
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @IFF_POINTOPOINT, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %150, label %144

144:                                              ; preds = %133
  %145 = load i32, i32* @NETSRC_FLAG_DIRECT, align 4
  %146 = load %struct.netsrc_rep*, %struct.netsrc_rep** %4, align 8
  %147 = getelementptr inbounds %struct.netsrc_rep, %struct.netsrc_rep* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = or i32 %148, %145
  store i32 %149, i32* %147, align 4
  br label %150

150:                                              ; preds = %144, %133, %126, %121, %114
  br label %151

151:                                              ; preds = %8, %150, %108
  ret void
}

declare dso_local i32 @RT_LOCK(%struct.rtentry*) #1

declare dso_local i32 @RT_UNLOCK(%struct.rtentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
