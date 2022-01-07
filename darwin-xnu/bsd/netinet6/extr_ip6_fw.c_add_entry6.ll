; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_ip6_fw.c_add_entry6.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_ip6_fw.c_add_entry6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip6_fw_head = type { %struct.ip6_fw_chain* }
%struct.ip6_fw_chain = type { i64, i64, i64, %struct.ip6_fw_chain*, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { %struct.ip6_fw_chain* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8* }
%struct.ip6_fw = type { i64, i64, i64, %struct.ip6_fw*, %struct.TYPE_6__, %struct.TYPE_5__ }

@M_IP6FW = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"%s malloc said no\0A\00", align 1
@err_prefix = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@IP6FW_IFNLEN = common dso_local global i32 0, align 4
@chain = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"%s bad rule number\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip6_fw_head*, %struct.ip6_fw*)* @add_entry6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_entry6(%struct.ip6_fw_head* %0, %struct.ip6_fw* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ip6_fw_head*, align 8
  %5 = alloca %struct.ip6_fw*, align 8
  %6 = alloca %struct.ip6_fw*, align 8
  %7 = alloca %struct.ip6_fw_chain*, align 8
  %8 = alloca %struct.ip6_fw_chain*, align 8
  %9 = alloca %struct.ip6_fw_chain*, align 8
  %10 = alloca i64, align 8
  store %struct.ip6_fw_head* %0, %struct.ip6_fw_head** %4, align 8
  store %struct.ip6_fw* %1, %struct.ip6_fw** %5, align 8
  store %struct.ip6_fw* null, %struct.ip6_fw** %6, align 8
  store %struct.ip6_fw_chain* null, %struct.ip6_fw_chain** %7, align 8
  store %struct.ip6_fw_chain* null, %struct.ip6_fw_chain** %9, align 8
  store i64 0, i64* %10, align 8
  %11 = load i32, i32* @M_IP6FW, align 4
  %12 = load i32, i32* @M_WAITOK, align 4
  %13 = call %struct.ip6_fw_chain* @_MALLOC(i32 48, i32 %11, i32 %12)
  store %struct.ip6_fw_chain* %13, %struct.ip6_fw_chain** %7, align 8
  %14 = load i32, i32* @M_IP6FW, align 4
  %15 = load i32, i32* @M_WAITOK, align 4
  %16 = call %struct.ip6_fw_chain* @_MALLOC(i32 48, i32 %14, i32 %15)
  %17 = bitcast %struct.ip6_fw_chain* %16 to %struct.ip6_fw*
  store %struct.ip6_fw* %17, %struct.ip6_fw** %6, align 8
  %18 = load %struct.ip6_fw_chain*, %struct.ip6_fw_chain** %7, align 8
  %19 = icmp ne %struct.ip6_fw_chain* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load %struct.ip6_fw*, %struct.ip6_fw** %6, align 8
  %22 = icmp ne %struct.ip6_fw* %21, null
  br i1 %22, label %44, label %23

23:                                               ; preds = %20, %2
  %24 = load i32, i32* @err_prefix, align 4
  %25 = sext i32 %24 to i64
  %26 = inttoptr i64 %25 to i8*
  %27 = call i32 @dprintf(i8* %26)
  %28 = load %struct.ip6_fw_chain*, %struct.ip6_fw_chain** %7, align 8
  %29 = icmp ne %struct.ip6_fw_chain* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = load %struct.ip6_fw_chain*, %struct.ip6_fw_chain** %7, align 8
  %32 = load i32, i32* @M_IP6FW, align 4
  %33 = call i32 @FREE(%struct.ip6_fw_chain* %31, i32 %32)
  br label %34

34:                                               ; preds = %30, %23
  %35 = load %struct.ip6_fw*, %struct.ip6_fw** %6, align 8
  %36 = icmp ne %struct.ip6_fw* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load %struct.ip6_fw*, %struct.ip6_fw** %6, align 8
  %39 = bitcast %struct.ip6_fw* %38 to %struct.ip6_fw_chain*
  %40 = load i32, i32* @M_IP6FW, align 4
  %41 = call i32 @FREE(%struct.ip6_fw_chain* %39, i32 %40)
  br label %42

42:                                               ; preds = %37, %34
  %43 = load i32, i32* @ENOSPC, align 4
  store i32 %43, i32* %3, align 4
  br label %190

44:                                               ; preds = %20
  %45 = load %struct.ip6_fw*, %struct.ip6_fw** %5, align 8
  %46 = bitcast %struct.ip6_fw* %45 to %struct.ip6_fw_chain*
  %47 = load %struct.ip6_fw*, %struct.ip6_fw** %6, align 8
  %48 = bitcast %struct.ip6_fw* %47 to %struct.ip6_fw_chain*
  %49 = call i32 @bcopy(%struct.ip6_fw_chain* %46, %struct.ip6_fw_chain* %48, i32 48)
  %50 = load %struct.ip6_fw*, %struct.ip6_fw** %6, align 8
  %51 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %50, i32 0, i32 5
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = load i32, i32* @IP6FW_IFNLEN, align 4
  %56 = sub nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %54, i64 %57
  store i8 0, i8* %58, align 1
  %59 = load %struct.ip6_fw*, %struct.ip6_fw** %6, align 8
  %60 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %59, i32 0, i32 0
  store i64 0, i64* %60, align 8
  %61 = load %struct.ip6_fw*, %struct.ip6_fw** %6, align 8
  %62 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %61, i32 0, i32 1
  store i64 0, i64* %62, align 8
  %63 = load %struct.ip6_fw*, %struct.ip6_fw** %6, align 8
  %64 = bitcast %struct.ip6_fw* %63 to %struct.ip6_fw_chain*
  %65 = load %struct.ip6_fw_chain*, %struct.ip6_fw_chain** %7, align 8
  %66 = getelementptr inbounds %struct.ip6_fw_chain, %struct.ip6_fw_chain* %65, i32 0, i32 3
  store %struct.ip6_fw_chain* %64, %struct.ip6_fw_chain** %66, align 8
  %67 = load %struct.ip6_fw_head*, %struct.ip6_fw_head** %4, align 8
  %68 = getelementptr inbounds %struct.ip6_fw_head, %struct.ip6_fw_head* %67, i32 0, i32 0
  %69 = load %struct.ip6_fw_chain*, %struct.ip6_fw_chain** %68, align 8
  %70 = icmp ne %struct.ip6_fw_chain* %69, null
  br i1 %70, label %76, label %71

71:                                               ; preds = %44
  %72 = load %struct.ip6_fw_head*, %struct.ip6_fw_head** %4, align 8
  %73 = load %struct.ip6_fw_chain*, %struct.ip6_fw_chain** %7, align 8
  %74 = load i32, i32* @chain, align 4
  %75 = call i32 @LIST_INSERT_HEAD(%struct.ip6_fw_head* %72, %struct.ip6_fw_chain* %73, i32 %74)
  store i32 0, i32* %3, align 4
  br label %190

76:                                               ; preds = %44
  %77 = load %struct.ip6_fw*, %struct.ip6_fw** %6, align 8
  %78 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %79, -1
  br i1 %80, label %81, label %102

81:                                               ; preds = %76
  %82 = load %struct.ip6_fw_chain*, %struct.ip6_fw_chain** %7, align 8
  %83 = icmp ne %struct.ip6_fw_chain* %82, null
  br i1 %83, label %84, label %88

84:                                               ; preds = %81
  %85 = load %struct.ip6_fw_chain*, %struct.ip6_fw_chain** %7, align 8
  %86 = load i32, i32* @M_IP6FW, align 4
  %87 = call i32 @FREE(%struct.ip6_fw_chain* %85, i32 %86)
  br label %88

88:                                               ; preds = %84, %81
  %89 = load %struct.ip6_fw*, %struct.ip6_fw** %6, align 8
  %90 = icmp ne %struct.ip6_fw* %89, null
  br i1 %90, label %91, label %96

91:                                               ; preds = %88
  %92 = load %struct.ip6_fw*, %struct.ip6_fw** %6, align 8
  %93 = bitcast %struct.ip6_fw* %92 to %struct.ip6_fw_chain*
  %94 = load i32, i32* @M_IP6FW, align 4
  %95 = call i32 @FREE(%struct.ip6_fw_chain* %93, i32 %94)
  br label %96

96:                                               ; preds = %91, %88
  %97 = load i32, i32* @err_prefix, align 4
  %98 = sext i32 %97 to i64
  %99 = inttoptr i64 %98 to i8*
  %100 = call i32 @dprintf(i8* %99)
  %101 = load i32, i32* @EINVAL, align 4
  store i32 %101, i32* %3, align 4
  br label %190

102:                                              ; preds = %76
  br label %103

103:                                              ; preds = %102
  %104 = load %struct.ip6_fw*, %struct.ip6_fw** %6, align 8
  %105 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %145

108:                                              ; preds = %103
  %109 = load %struct.ip6_fw_head*, %struct.ip6_fw_head** %4, align 8
  %110 = getelementptr inbounds %struct.ip6_fw_head, %struct.ip6_fw_head* %109, i32 0, i32 0
  %111 = load %struct.ip6_fw_chain*, %struct.ip6_fw_chain** %110, align 8
  store %struct.ip6_fw_chain* %111, %struct.ip6_fw_chain** %8, align 8
  br label %112

112:                                              ; preds = %130, %108
  %113 = load %struct.ip6_fw_chain*, %struct.ip6_fw_chain** %8, align 8
  %114 = icmp ne %struct.ip6_fw_chain* %113, null
  br i1 %114, label %115, label %135

115:                                              ; preds = %112
  %116 = load %struct.ip6_fw_chain*, %struct.ip6_fw_chain** %8, align 8
  %117 = getelementptr inbounds %struct.ip6_fw_chain, %struct.ip6_fw_chain* %116, i32 0, i32 3
  %118 = load %struct.ip6_fw_chain*, %struct.ip6_fw_chain** %117, align 8
  %119 = getelementptr inbounds %struct.ip6_fw_chain, %struct.ip6_fw_chain* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, -1
  br i1 %121, label %122, label %128

122:                                              ; preds = %115
  %123 = load %struct.ip6_fw_chain*, %struct.ip6_fw_chain** %8, align 8
  %124 = getelementptr inbounds %struct.ip6_fw_chain, %struct.ip6_fw_chain* %123, i32 0, i32 3
  %125 = load %struct.ip6_fw_chain*, %struct.ip6_fw_chain** %124, align 8
  %126 = getelementptr inbounds %struct.ip6_fw_chain, %struct.ip6_fw_chain* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  store i64 %127, i64* %10, align 8
  br label %129

128:                                              ; preds = %115
  br label %135

129:                                              ; preds = %122
  br label %130

130:                                              ; preds = %129
  %131 = load %struct.ip6_fw_chain*, %struct.ip6_fw_chain** %8, align 8
  %132 = getelementptr inbounds %struct.ip6_fw_chain, %struct.ip6_fw_chain* %131, i32 0, i32 4
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = load %struct.ip6_fw_chain*, %struct.ip6_fw_chain** %133, align 8
  store %struct.ip6_fw_chain* %134, %struct.ip6_fw_chain** %8, align 8
  br label %112

135:                                              ; preds = %128, %112
  %136 = load i64, i64* %10, align 8
  %137 = icmp slt i64 %136, -101
  br i1 %137, label %138, label %141

138:                                              ; preds = %135
  %139 = load i64, i64* %10, align 8
  %140 = add nsw i64 %139, 100
  store i64 %140, i64* %10, align 8
  br label %141

141:                                              ; preds = %138, %135
  %142 = load i64, i64* %10, align 8
  %143 = load %struct.ip6_fw*, %struct.ip6_fw** %6, align 8
  %144 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %143, i32 0, i32 2
  store i64 %142, i64* %144, align 8
  br label %145

145:                                              ; preds = %141, %103
  %146 = load %struct.ip6_fw_head*, %struct.ip6_fw_head** %4, align 8
  %147 = getelementptr inbounds %struct.ip6_fw_head, %struct.ip6_fw_head* %146, i32 0, i32 0
  %148 = load %struct.ip6_fw_chain*, %struct.ip6_fw_chain** %147, align 8
  store %struct.ip6_fw_chain* %148, %struct.ip6_fw_chain** %8, align 8
  br label %149

149:                                              ; preds = %179, %145
  %150 = load %struct.ip6_fw_chain*, %struct.ip6_fw_chain** %8, align 8
  %151 = icmp ne %struct.ip6_fw_chain* %150, null
  br i1 %151, label %152, label %184

152:                                              ; preds = %149
  %153 = load %struct.ip6_fw_chain*, %struct.ip6_fw_chain** %8, align 8
  %154 = getelementptr inbounds %struct.ip6_fw_chain, %struct.ip6_fw_chain* %153, i32 0, i32 3
  %155 = load %struct.ip6_fw_chain*, %struct.ip6_fw_chain** %154, align 8
  %156 = getelementptr inbounds %struct.ip6_fw_chain, %struct.ip6_fw_chain* %155, i32 0, i32 2
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.ip6_fw*, %struct.ip6_fw** %6, align 8
  %159 = getelementptr inbounds %struct.ip6_fw, %struct.ip6_fw* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = icmp sgt i64 %157, %160
  br i1 %161, label %162, label %176

162:                                              ; preds = %152
  %163 = load %struct.ip6_fw_chain*, %struct.ip6_fw_chain** %9, align 8
  %164 = icmp ne %struct.ip6_fw_chain* %163, null
  br i1 %164, label %165, label %170

165:                                              ; preds = %162
  %166 = load %struct.ip6_fw_chain*, %struct.ip6_fw_chain** %9, align 8
  %167 = load %struct.ip6_fw_chain*, %struct.ip6_fw_chain** %7, align 8
  %168 = load i32, i32* @chain, align 4
  %169 = call i32 @LIST_INSERT_AFTER(%struct.ip6_fw_chain* %166, %struct.ip6_fw_chain* %167, i32 %168)
  br label %175

170:                                              ; preds = %162
  %171 = load %struct.ip6_fw_head*, %struct.ip6_fw_head** %4, align 8
  %172 = load %struct.ip6_fw_chain*, %struct.ip6_fw_chain** %7, align 8
  %173 = load i32, i32* @chain, align 4
  %174 = call i32 @LIST_INSERT_HEAD(%struct.ip6_fw_head* %171, %struct.ip6_fw_chain* %172, i32 %173)
  br label %175

175:                                              ; preds = %170, %165
  br label %184

176:                                              ; preds = %152
  %177 = load %struct.ip6_fw_chain*, %struct.ip6_fw_chain** %8, align 8
  store %struct.ip6_fw_chain* %177, %struct.ip6_fw_chain** %9, align 8
  br label %178

178:                                              ; preds = %176
  br label %179

179:                                              ; preds = %178
  %180 = load %struct.ip6_fw_chain*, %struct.ip6_fw_chain** %8, align 8
  %181 = getelementptr inbounds %struct.ip6_fw_chain, %struct.ip6_fw_chain* %180, i32 0, i32 4
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 0
  %183 = load %struct.ip6_fw_chain*, %struct.ip6_fw_chain** %182, align 8
  store %struct.ip6_fw_chain* %183, %struct.ip6_fw_chain** %8, align 8
  br label %149

184:                                              ; preds = %175, %149
  %185 = load %struct.ip6_fw*, %struct.ip6_fw** %6, align 8
  %186 = bitcast %struct.ip6_fw* %185 to %struct.ip6_fw_chain*
  %187 = load %struct.ip6_fw*, %struct.ip6_fw** %5, align 8
  %188 = bitcast %struct.ip6_fw* %187 to %struct.ip6_fw_chain*
  %189 = call i32 @bcopy(%struct.ip6_fw_chain* %186, %struct.ip6_fw_chain* %188, i32 48)
  store i32 0, i32* %3, align 4
  br label %190

190:                                              ; preds = %184, %96, %71, %42
  %191 = load i32, i32* %3, align 4
  ret i32 %191
}

declare dso_local %struct.ip6_fw_chain* @_MALLOC(i32, i32, i32) #1

declare dso_local i32 @dprintf(i8*) #1

declare dso_local i32 @FREE(%struct.ip6_fw_chain*, i32) #1

declare dso_local i32 @bcopy(%struct.ip6_fw_chain*, %struct.ip6_fw_chain*, i32) #1

declare dso_local i32 @LIST_INSERT_HEAD(%struct.ip6_fw_head*, %struct.ip6_fw_chain*, i32) #1

declare dso_local i32 @LIST_INSERT_AFTER(%struct.ip6_fw_chain*, %struct.ip6_fw_chain*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
