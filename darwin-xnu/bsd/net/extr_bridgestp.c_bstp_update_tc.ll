; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_bridgestp.c_bstp_update_tc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_bridgestp.c_bstp_update_tc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bstp_port = type { i32, %struct.TYPE_2__*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@BSTP_ROLE_DESIGNATED = common dso_local global i32 0, align 4
@BSTP_ROLE_ROOT = common dso_local global i32 0, align 4
@BSTP_IFSTATE_LEARNING = common dso_local global i32 0, align 4
@BSTP_IFSTATE_FORWARDING = common dso_local global i32 0, align 4
@BSTP_IFSTATE_DISCARDING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Invalid TC state for %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bstp_port*)* @bstp_update_tc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bstp_update_tc(%struct.bstp_port* %0) #0 {
  %2 = alloca %struct.bstp_port*, align 8
  store %struct.bstp_port* %0, %struct.bstp_port** %2, align 8
  %3 = load %struct.bstp_port*, %struct.bstp_port** %2, align 8
  %4 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  switch i32 %5, label %164 [
    i32 134, label %6
    i32 132, label %64
    i32 131, label %85
    i32 133, label %157
    i32 128, label %157
    i32 129, label %157
    i32 130, label %157
    i32 135, label %157
  ]

6:                                                ; preds = %1
  %7 = load %struct.bstp_port*, %struct.bstp_port** %2, align 8
  %8 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @BSTP_ROLE_DESIGNATED, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %6
  %13 = load %struct.bstp_port*, %struct.bstp_port** %2, align 8
  %14 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @BSTP_ROLE_ROOT, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %23, label %18

18:                                               ; preds = %12, %6
  %19 = load %struct.bstp_port*, %struct.bstp_port** %2, align 8
  %20 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18, %12
  %24 = load %struct.bstp_port*, %struct.bstp_port** %2, align 8
  %25 = call i32 @bstp_set_port_tc(%struct.bstp_port* %24, i32 131)
  br label %26

26:                                               ; preds = %23, %18
  %27 = load %struct.bstp_port*, %struct.bstp_port** %2, align 8
  %28 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %27, i32 0, i32 7
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load %struct.bstp_port*, %struct.bstp_port** %2, align 8
  %33 = call i32 @bstp_set_port_tc(%struct.bstp_port* %32, i32 128)
  br label %34

34:                                               ; preds = %31, %26
  %35 = load %struct.bstp_port*, %struct.bstp_port** %2, align 8
  %36 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %35, i32 0, i32 8
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load %struct.bstp_port*, %struct.bstp_port** %2, align 8
  %41 = call i32 @bstp_set_port_tc(%struct.bstp_port* %40, i32 129)
  br label %42

42:                                               ; preds = %39, %34
  %43 = load %struct.bstp_port*, %struct.bstp_port** %2, align 8
  %44 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %42
  %48 = load %struct.bstp_port*, %struct.bstp_port** %2, align 8
  %49 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %47
  %53 = load %struct.bstp_port*, %struct.bstp_port** %2, align 8
  %54 = call i32 @bstp_set_port_tc(%struct.bstp_port* %53, i32 130)
  br label %55

55:                                               ; preds = %52, %47, %42
  %56 = load %struct.bstp_port*, %struct.bstp_port** %2, align 8
  %57 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load %struct.bstp_port*, %struct.bstp_port** %2, align 8
  %62 = call i32 @bstp_set_port_tc(%struct.bstp_port* %61, i32 135)
  br label %63

63:                                               ; preds = %60, %55
  br label %164

64:                                               ; preds = %1
  %65 = load %struct.bstp_port*, %struct.bstp_port** %2, align 8
  %66 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @BSTP_IFSTATE_LEARNING, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %76, label %70

70:                                               ; preds = %64
  %71 = load %struct.bstp_port*, %struct.bstp_port** %2, align 8
  %72 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @BSTP_IFSTATE_FORWARDING, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %84

76:                                               ; preds = %70, %64
  %77 = load %struct.bstp_port*, %struct.bstp_port** %2, align 8
  %78 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %77, i32 0, i32 9
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load %struct.bstp_port*, %struct.bstp_port** %2, align 8
  %83 = call i32 @bstp_set_port_tc(%struct.bstp_port* %82, i32 131)
  br label %84

84:                                               ; preds = %81, %76, %70
  br label %164

85:                                               ; preds = %1
  %86 = load %struct.bstp_port*, %struct.bstp_port** %2, align 8
  %87 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %86, i32 0, i32 8
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %105, label %90

90:                                               ; preds = %85
  %91 = load %struct.bstp_port*, %struct.bstp_port** %2, align 8
  %92 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %91, i32 0, i32 7
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %105, label %95

95:                                               ; preds = %90
  %96 = load %struct.bstp_port*, %struct.bstp_port** %2, align 8
  %97 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %96, i32 0, i32 6
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %105, label %100

100:                                              ; preds = %95
  %101 = load %struct.bstp_port*, %struct.bstp_port** %2, align 8
  %102 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %100, %95, %90, %85
  %106 = load %struct.bstp_port*, %struct.bstp_port** %2, align 8
  %107 = call i32 @bstp_set_port_tc(%struct.bstp_port* %106, i32 131)
  br label %130

108:                                              ; preds = %100
  %109 = load %struct.bstp_port*, %struct.bstp_port** %2, align 8
  %110 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @BSTP_ROLE_DESIGNATED, align 4
  %113 = icmp ne i32 %111, %112
  br i1 %113, label %114, label %129

114:                                              ; preds = %108
  %115 = load %struct.bstp_port*, %struct.bstp_port** %2, align 8
  %116 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @BSTP_ROLE_ROOT, align 4
  %119 = icmp ne i32 %117, %118
  br i1 %119, label %120, label %129

120:                                              ; preds = %114
  %121 = load %struct.bstp_port*, %struct.bstp_port** %2, align 8
  %122 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @BSTP_IFSTATE_DISCARDING, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %129

126:                                              ; preds = %120
  %127 = load %struct.bstp_port*, %struct.bstp_port** %2, align 8
  %128 = call i32 @bstp_set_port_tc(%struct.bstp_port* %127, i32 132)
  br label %129

129:                                              ; preds = %126, %120, %114, %108
  br label %130

130:                                              ; preds = %129, %105
  %131 = load %struct.bstp_port*, %struct.bstp_port** %2, align 8
  %132 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @BSTP_ROLE_DESIGNATED, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %142, label %136

136:                                              ; preds = %130
  %137 = load %struct.bstp_port*, %struct.bstp_port** %2, align 8
  %138 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @BSTP_ROLE_ROOT, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %156

142:                                              ; preds = %136, %130
  %143 = load %struct.bstp_port*, %struct.bstp_port** %2, align 8
  %144 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @BSTP_IFSTATE_FORWARDING, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %156

148:                                              ; preds = %142
  %149 = load %struct.bstp_port*, %struct.bstp_port** %2, align 8
  %150 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %156, label %153

153:                                              ; preds = %148
  %154 = load %struct.bstp_port*, %struct.bstp_port** %2, align 8
  %155 = call i32 @bstp_set_port_tc(%struct.bstp_port* %154, i32 133)
  br label %156

156:                                              ; preds = %153, %148, %142, %136
  br label %164

157:                                              ; preds = %1, %1, %1, %1, %1
  %158 = load %struct.bstp_port*, %struct.bstp_port** %2, align 8
  %159 = getelementptr inbounds %struct.bstp_port, %struct.bstp_port* %158, i32 0, i32 1
  %160 = load %struct.TYPE_2__*, %struct.TYPE_2__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @DPRINTF(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %162)
  br label %164

164:                                              ; preds = %1, %157, %156, %84, %63
  ret void
}

declare dso_local i32 @bstp_set_port_tc(%struct.bstp_port*, i32) #1

declare dso_local i32 @DPRINTF(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
