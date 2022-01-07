; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_kpi_interface.c_ifnet_set_delegate.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_kpi_interface.c_ifnet_set_delegate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i8*, i32, i32, i32, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, i32, i32, %struct.TYPE_13__* }

@EINVAL = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"%s: delegating to %s would cause a loop\0A\00", align 1
@IFEF_EXPENSIVE = common dso_local global i32 0, align 4
@IFEF_ECN_ENABLE = common dso_local global i32 0, align 4
@IFEF_ECN_DISABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"%s: is now delegating %s (type 0x%x, family %u, sub-family %u)\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"%s: is no longer delegating %s\0A\00", align 1
@KEV_DL_SUBCLASS = common dso_local global i32 0, align 4
@KEV_DL_IFDELEGATE_CHANGED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ifnet_set_delegate(%struct.TYPE_13__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %6, align 8
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %9 = icmp eq %struct.TYPE_13__* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @EINVAL, align 4
  store i32 %11, i32* %3, align 4
  br label %168

12:                                               ; preds = %2
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %14 = call i32 @ifnet_is_attached(%struct.TYPE_13__* %13, i32 1)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = load i32, i32* @ENXIO, align 4
  store i32 %17, i32* %3, align 4
  br label %168

18:                                               ; preds = %12
  br label %19

19:                                               ; preds = %18
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %21 = call i32 @ifnet_lock_exclusive(%struct.TYPE_13__* %20)
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 5
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 4
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  store %struct.TYPE_13__* %25, %struct.TYPE_13__** %6, align 8
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %27 = icmp ne %struct.TYPE_13__* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %19
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %31 = icmp eq %struct.TYPE_13__* %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %34 = call i32 @ifnet_lock_done(%struct.TYPE_13__* %33)
  br label %165

35:                                               ; preds = %28, %19
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_13__* %36, %struct.TYPE_13__** %7, align 8
  br label %37

37:                                               ; preds = %54, %35
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %39 = icmp ne %struct.TYPE_13__* %38, null
  br i1 %39, label %40, label %59

40:                                               ; preds = %37
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %43 = icmp eq %struct.TYPE_13__* %41, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %40
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 (i8*, i8*, i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %47, i8* %50)
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %53 = call i32 @ifnet_lock_done(%struct.TYPE_13__* %52)
  br label %165

54:                                               ; preds = %40
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 5
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 4
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %57, align 8
  store %struct.TYPE_13__* %58, %struct.TYPE_13__** %7, align 8
  br label %37

59:                                               ; preds = %37
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 5
  %62 = call i32 @bzero(%struct.TYPE_12__* %61, i32 24)
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %64 = icmp ne %struct.TYPE_13__* %63, null
  br i1 %64, label %65, label %140

65:                                               ; preds = %59
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %68 = icmp ne %struct.TYPE_13__* %66, %67
  br i1 %68, label %69, label %140

69:                                               ; preds = %65
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 5
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 4
  store %struct.TYPE_13__* %70, %struct.TYPE_13__** %73, align 8
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %75 = call i32 @ifnet_reference(%struct.TYPE_13__* %74)
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 5
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  store i32 %78, i32* %81, align 8
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 5
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 1
  store i32 %84, i32* %87, align 4
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 5
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 2
  store i32 %90, i32* %93, align 8
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @IFEF_EXPENSIVE, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  %100 = zext i1 %99 to i64
  %101 = select i1 %99, i32 1, i32 0
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 5
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 3
  store i32 %101, i32* %104, align 4
  %105 = load i32, i32* @IFEF_ECN_ENABLE, align 4
  %106 = load i32, i32* @IFEF_ECN_DISABLE, align 4
  %107 = or i32 %105, %106
  %108 = xor i32 %107, -1
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 4
  %112 = and i32 %111, %108
  store i32 %112, i32* %110, align 4
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @IFEF_ECN_ENABLE, align 4
  %117 = load i32, i32* @IFEF_ECN_DISABLE, align 4
  %118 = or i32 %116, %117
  %119 = and i32 %115, %118
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 4
  %123 = or i32 %122, %119
  store i32 %123, i32* %121, align 4
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 0
  %126 = load i8*, i8** %125, align 8
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 0
  %129 = load i8*, i8** %128, align 8
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 8
  %139 = call i32 (i8*, i8*, i8*, ...) @printf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i8* %126, i8* %129, i32 %132, i32 %135, i32 %138)
  br label %140

140:                                              ; preds = %69, %65, %59
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %142 = call i32 @ifnet_lock_done(%struct.TYPE_13__* %141)
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %144 = icmp ne %struct.TYPE_13__* %143, null
  br i1 %144, label %145, label %160

145:                                              ; preds = %140
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %148 = icmp ne %struct.TYPE_13__* %146, %147
  br i1 %148, label %149, label %157

149:                                              ; preds = %145
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 0
  %152 = load i8*, i8** %151, align 8
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 0
  %155 = load i8*, i8** %154, align 8
  %156 = call i32 (i8*, i8*, i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %152, i8* %155)
  br label %157

157:                                              ; preds = %149, %145
  %158 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %159 = call i32 @ifnet_release(%struct.TYPE_13__* %158)
  br label %160

160:                                              ; preds = %157, %140
  %161 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %162 = load i32, i32* @KEV_DL_SUBCLASS, align 4
  %163 = load i32, i32* @KEV_DL_IFDELEGATE_CHANGED, align 4
  %164 = call i32 @dlil_post_msg(%struct.TYPE_13__* %161, i32 %162, i32 %163, i32* null, i32 0)
  br label %165

165:                                              ; preds = %160, %44, %32
  %166 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %167 = call i32 @ifnet_decr_iorefcnt(%struct.TYPE_13__* %166)
  store i32 0, i32* %3, align 4
  br label %168

168:                                              ; preds = %165, %16, %10
  %169 = load i32, i32* %3, align 4
  ret i32 %169
}

declare dso_local i32 @ifnet_is_attached(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @ifnet_lock_exclusive(%struct.TYPE_13__*) #1

declare dso_local i32 @ifnet_lock_done(%struct.TYPE_13__*) #1

declare dso_local i32 @printf(i8*, i8*, i8*, ...) #1

declare dso_local i32 @bzero(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @ifnet_reference(%struct.TYPE_13__*) #1

declare dso_local i32 @ifnet_release(%struct.TYPE_13__*) #1

declare dso_local i32 @dlil_post_msg(%struct.TYPE_13__*, i32, i32, i32*, i32) #1

declare dso_local i32 @ifnet_decr_iorefcnt(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
