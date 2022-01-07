; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_yabause.c_YabauseSpeedySetup.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_yabause.c_YabauseSpeedySetup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_33__ = type { i64 }
%struct.TYPE_26__ = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_31__, i64 }
%struct.TYPE_31__ = type { i32, i32, i32, i32, i64 }
%struct.TYPE_24__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32*, i32, i32, i32, i32, i32, %struct.TYPE_32__ }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_23__ = type { i32, i32, i32, i32, i32, i32, i32, i64, i64 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_20__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_34__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_30__, %struct.TYPE_29__, %struct.TYPE_28__, %struct.TYPE_27__ }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_27__ = type { i32 }

@yabsys = common dso_local global %struct.TYPE_33__ zeroinitializer, align 8
@Cs2Area = common dso_local global %struct.TYPE_26__* null, align 8
@MSH2 = common dso_local global %struct.TYPE_24__* null, align 8
@ScuRegs = common dso_local global %struct.TYPE_23__* null, align 8
@SmpcRegs = common dso_local global %struct.TYPE_21__* null, align 8
@SmpcInternalVars = common dso_local global %struct.TYPE_22__* null, align 8
@Vdp1Regs = common dso_local global %struct.TYPE_20__* null, align 8
@Vdp2Regs = common dso_local global %struct.TYPE_34__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @YabauseSpeedySetup() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i64, i64* getelementptr inbounds (%struct.TYPE_33__, %struct.TYPE_33__* @yabsys, i32 0, i32 0), align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = call i32 (...) @BiosInit()
  br label %91

7:                                                ; preds = %0
  store i32 0, i32* %2, align 4
  br label %8

8:                                                ; preds = %19, %7
  %9 = load i32, i32* %2, align 4
  %10 = icmp slt i32 %9, 528
  br i1 %10, label %11, label %22

11:                                               ; preds = %8
  %12 = load i32, i32* %2, align 4
  %13 = add nsw i32 1536, %12
  %14 = call i32 @MappedMemoryReadLong(i32 %13)
  store i32 %14, i32* %1, align 4
  %15 = load i32, i32* %2, align 4
  %16 = add nsw i32 100663296, %15
  %17 = load i32, i32* %1, align 4
  %18 = call i32 @MappedMemoryWriteLong(i32 %16, i32 %17)
  br label %19

19:                                               ; preds = %11
  %20 = load i32, i32* %2, align 4
  %21 = add nsw i32 %20, 4
  store i32 %21, i32* %2, align 4
  br label %8

22:                                               ; preds = %8
  store i32 0, i32* %2, align 4
  br label %23

23:                                               ; preds = %34, %22
  %24 = load i32, i32* %2, align 4
  %25 = icmp slt i32 %24, 2272
  br i1 %25, label %26, label %37

26:                                               ; preds = %23
  %27 = load i32, i32* %2, align 4
  %28 = add nsw i32 2080, %27
  %29 = call i32 @MappedMemoryReadLong(i32 %28)
  store i32 %29, i32* %1, align 4
  %30 = load i32, i32* %2, align 4
  %31 = add nsw i32 100663840, %30
  %32 = load i32, i32* %1, align 4
  %33 = call i32 @MappedMemoryWriteLong(i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %26
  %35 = load i32, i32* %2, align 4
  %36 = add nsw i32 %35, 4
  store i32 %36, i32* %2, align 4
  br label %23

37:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %49, %37
  %39 = load i32, i32* %2, align 4
  %40 = icmp slt i32 %39, 1792
  br i1 %40, label %41, label %52

41:                                               ; preds = %38
  %42 = load i32, i32* %2, align 4
  %43 = add nsw i32 4352, %42
  %44 = call i32 @MappedMemoryReadLong(i32 %43)
  store i32 %44, i32* %1, align 4
  %45 = load i32, i32* %2, align 4
  %46 = add nsw i32 100667648, %45
  %47 = load i32, i32* %1, align 4
  %48 = call i32 @MappedMemoryWriteLong(i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %41
  %50 = load i32, i32* %2, align 4
  %51 = add nsw i32 %50, 4
  store i32 %51, i32* %2, align 4
  br label %38

52:                                               ; preds = %38
  %53 = call i32 @MappedMemoryWriteLong(i32 100663860, i32 684)
  %54 = call i32 @MappedMemoryWriteLong(i32 100663864, i32 700)
  %55 = call i32 @MappedMemoryWriteLong(i32 100663868, i32 848)
  %56 = call i32 @MappedMemoryWriteLong(i32 100663872, i32 844252249)
  %57 = call i32 @MappedMemoryWriteLong(i32 100663884, i32 0)
  %58 = call i32 @MappedMemoryReadLong(i32 4932)
  %59 = call i32 @MappedMemoryWriteLong(i32 100663912, i32 %58)
  %60 = call i32 @MappedMemoryReadLong(i32 4936)
  %61 = call i32 @MappedMemoryWriteLong(i32 100663916, i32 %60)
  %62 = call i32 @MappedMemoryReadLong(i32 4948)
  %63 = call i32 @MappedMemoryWriteLong(i32 100663964, i32 %62)
  %64 = call i32 @MappedMemoryReadLong(i32 4356)
  %65 = call i32 @MappedMemoryWriteLong(i32 100664004, i32 %64)
  %66 = call i32 @MappedMemoryReadLong(i32 4360)
  %67 = call i32 @MappedMemoryWriteLong(i32 100664008, i32 %66)
  %68 = call i32 @MappedMemoryReadLong(i32 4364)
  %69 = call i32 @MappedMemoryWriteLong(i32 100664012, i32 %68)
  %70 = call i32 @MappedMemoryReadLong(i32 4368)
  %71 = call i32 @MappedMemoryWriteLong(i32 100664016, i32 %70)
  %72 = call i32 @MappedMemoryReadLong(i32 4372)
  %73 = call i32 @MappedMemoryWriteLong(i32 100664020, i32 %72)
  %74 = call i32 @MappedMemoryReadLong(i32 4376)
  %75 = call i32 @MappedMemoryWriteLong(i32 100664024, i32 %74)
  %76 = call i32 @MappedMemoryReadLong(i32 4380)
  %77 = call i32 @MappedMemoryWriteLong(i32 100664028, i32 %76)
  %78 = call i32 @MappedMemoryWriteLong(i32 100664104, i32 1224)
  %79 = call i32 @MappedMemoryWriteLong(i32 100664108, i32 6144)
  store i32 0, i32* %2, align 4
  br label %80

80:                                               ; preds = %87, %52
  %81 = load i32, i32* %2, align 4
  %82 = icmp slt i32 %81, 128
  br i1 %82, label %83, label %90

83:                                               ; preds = %80
  %84 = load i32, i32* %2, align 4
  %85 = add nsw i32 100665856, %84
  %86 = call i32 @MappedMemoryWriteLong(i32 %85, i32 100665404)
  br label %87

87:                                               ; preds = %83
  %88 = load i32, i32* %2, align 4
  %89 = add nsw i32 %88, 4
  store i32 %89, i32* %2, align 4
  br label %80

90:                                               ; preds = %80
  br label %91

91:                                               ; preds = %90, %5
  %92 = load %struct.TYPE_26__*, %struct.TYPE_26__** @Cs2Area, align 8
  %93 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %92, i32 0, i32 8
  %94 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %93, i32 0, i32 0
  store i32 4033, i32* %94, align 8
  %95 = load %struct.TYPE_26__*, %struct.TYPE_26__** @Cs2Area, align 8
  %96 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %95, i32 0, i32 9
  store i64 0, i64* %96, align 8
  %97 = load %struct.TYPE_26__*, %struct.TYPE_26__** @Cs2Area, align 8
  %98 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = shl i32 %99, 8
  %101 = load %struct.TYPE_26__*, %struct.TYPE_26__** @Cs2Area, align 8
  %102 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = and i32 %103, 15
  %105 = shl i32 %104, 4
  %106 = or i32 %100, %105
  %107 = load %struct.TYPE_26__*, %struct.TYPE_26__** @Cs2Area, align 8
  %108 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = and i32 %109, 15
  %111 = or i32 %106, %110
  %112 = load %struct.TYPE_26__*, %struct.TYPE_26__** @Cs2Area, align 8
  %113 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %112, i32 0, i32 8
  %114 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %113, i32 0, i32 1
  store i32 %111, i32* %114, align 4
  %115 = load %struct.TYPE_26__*, %struct.TYPE_26__** @Cs2Area, align 8
  %116 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = shl i32 %117, 8
  %119 = load %struct.TYPE_26__*, %struct.TYPE_26__** @Cs2Area, align 8
  %120 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 8
  %122 = or i32 %118, %121
  %123 = load %struct.TYPE_26__*, %struct.TYPE_26__** @Cs2Area, align 8
  %124 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %123, i32 0, i32 8
  %125 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %124, i32 0, i32 2
  store i32 %122, i32* %125, align 8
  %126 = load %struct.TYPE_26__*, %struct.TYPE_26__** @Cs2Area, align 8
  %127 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %126, i32 0, i32 5
  %128 = load i32, i32* %127, align 4
  %129 = shl i32 %128, 8
  %130 = load %struct.TYPE_26__*, %struct.TYPE_26__** @Cs2Area, align 8
  %131 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %130, i32 0, i32 6
  %132 = load i32, i32* %131, align 8
  %133 = ashr i32 %132, 16
  %134 = and i32 %133, 255
  %135 = or i32 %129, %134
  %136 = load %struct.TYPE_26__*, %struct.TYPE_26__** @Cs2Area, align 8
  %137 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %136, i32 0, i32 8
  %138 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %137, i32 0, i32 3
  store i32 %135, i32* %138, align 4
  %139 = load %struct.TYPE_26__*, %struct.TYPE_26__** @Cs2Area, align 8
  %140 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %139, i32 0, i32 6
  %141 = load i32, i32* %140, align 8
  %142 = sext i32 %141 to i64
  %143 = load %struct.TYPE_26__*, %struct.TYPE_26__** @Cs2Area, align 8
  %144 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %143, i32 0, i32 8
  %145 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %144, i32 0, i32 4
  store i64 %142, i64* %145, align 8
  %146 = load %struct.TYPE_26__*, %struct.TYPE_26__** @Cs2Area, align 8
  %147 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %146, i32 0, i32 7
  store i32 4, i32* %147, align 4
  %148 = load %struct.TYPE_24__*, %struct.TYPE_24__** @MSH2, align 8
  %149 = load %struct.TYPE_24__*, %struct.TYPE_24__** @MSH2, align 8
  %150 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %149, i32 0, i32 0
  %151 = call i32 @SH2GetRegisters(%struct.TYPE_24__* %148, %struct.TYPE_25__* %150)
  store i32 0, i32* %2, align 4
  br label %152

152:                                              ; preds = %163, %91
  %153 = load i32, i32* %2, align 4
  %154 = icmp slt i32 %153, 15
  br i1 %154, label %155, label %166

155:                                              ; preds = %152
  %156 = load %struct.TYPE_24__*, %struct.TYPE_24__** @MSH2, align 8
  %157 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* %2, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  store i32 0, i32* %162, align 4
  br label %163

163:                                              ; preds = %155
  %164 = load i32, i32* %2, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %2, align 4
  br label %152

166:                                              ; preds = %152
  %167 = load %struct.TYPE_24__*, %struct.TYPE_24__** @MSH2, align 8
  %168 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %168, i32 0, i32 0
  %170 = load i32*, i32** %169, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 15
  store i32 100671488, i32* %171, align 4
  %172 = load %struct.TYPE_24__*, %struct.TYPE_24__** @MSH2, align 8
  %173 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %173, i32 0, i32 6
  %175 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %174, i32 0, i32 0
  store i32 0, i32* %175, align 4
  %176 = load %struct.TYPE_24__*, %struct.TYPE_24__** @MSH2, align 8
  %177 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %177, i32 0, i32 1
  store i32 0, i32* %178, align 8
  %179 = load %struct.TYPE_24__*, %struct.TYPE_24__** @MSH2, align 8
  %180 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %180, i32 0, i32 2
  store i32 100663296, i32* %181, align 4
  %182 = load %struct.TYPE_24__*, %struct.TYPE_24__** @MSH2, align 8
  %183 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %183, i32 0, i32 3
  store i32 0, i32* %184, align 8
  %185 = load %struct.TYPE_24__*, %struct.TYPE_24__** @MSH2, align 8
  %186 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %186, i32 0, i32 4
  store i32 0, i32* %187, align 4
  %188 = load %struct.TYPE_24__*, %struct.TYPE_24__** @MSH2, align 8
  %189 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %189, i32 0, i32 5
  store i32 0, i32* %190, align 8
  %191 = load %struct.TYPE_24__*, %struct.TYPE_24__** @MSH2, align 8
  %192 = load %struct.TYPE_24__*, %struct.TYPE_24__** @MSH2, align 8
  %193 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %192, i32 0, i32 0
  %194 = call i32 @SH2SetRegisters(%struct.TYPE_24__* %191, %struct.TYPE_25__* %193)
  %195 = load %struct.TYPE_23__*, %struct.TYPE_23__** @ScuRegs, align 8
  %196 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %195, i32 0, i32 7
  store i64 0, i64* %196, align 8
  %197 = load %struct.TYPE_23__*, %struct.TYPE_23__** @ScuRegs, align 8
  %198 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %197, i32 0, i32 8
  store i64 0, i64* %198, align 8
  %199 = load %struct.TYPE_23__*, %struct.TYPE_23__** @ScuRegs, align 8
  %200 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %199, i32 0, i32 0
  store i32 257, i32* %200, align 8
  %201 = load %struct.TYPE_23__*, %struct.TYPE_23__** @ScuRegs, align 8
  %202 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %201, i32 0, i32 1
  store i32 8198, i32* %202, align 4
  %203 = load %struct.TYPE_23__*, %struct.TYPE_23__** @ScuRegs, align 8
  %204 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %203, i32 0, i32 2
  store i32 1, i32* %204, align 8
  %205 = load %struct.TYPE_23__*, %struct.TYPE_23__** @ScuRegs, align 8
  %206 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %205, i32 0, i32 4
  store i32 535830512, i32* %206, align 8
  %207 = load %struct.TYPE_23__*, %struct.TYPE_23__** @ScuRegs, align 8
  %208 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %207, i32 0, i32 3
  store i32 535830512, i32* %208, align 4
  %209 = load %struct.TYPE_23__*, %struct.TYPE_23__** @ScuRegs, align 8
  %210 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %209, i32 0, i32 5
  store i32 31, i32* %210, align 4
  %211 = load %struct.TYPE_23__*, %struct.TYPE_23__** @ScuRegs, align 8
  %212 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %211, i32 0, i32 6
  store i32 1, i32* %212, align 8
  %213 = load %struct.TYPE_21__*, %struct.TYPE_21__** @SmpcRegs, align 8
  %214 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %213, i32 0, i32 0
  store i32 16, i32* %214, align 4
  %215 = load %struct.TYPE_22__*, %struct.TYPE_22__** @SmpcInternalVars, align 8
  %216 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %215, i32 0, i32 0
  store i64 0, i64* %216, align 8
  %217 = load %struct.TYPE_20__*, %struct.TYPE_20__** @Vdp1Regs, align 8
  %218 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %217, i32 0, i32 0
  store i32 3, i32* %218, align 4
  %219 = load %struct.TYPE_20__*, %struct.TYPE_20__** @Vdp1Regs, align 8
  %220 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %219, i32 0, i32 1
  store i32 160, i32* %220, align 4
  %221 = load %struct.TYPE_20__*, %struct.TYPE_20__** @Vdp1Regs, align 8
  %222 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %221, i32 0, i32 2
  store i32 112, i32* %222, align 4
  %223 = load %struct.TYPE_20__*, %struct.TYPE_20__** @Vdp1Regs, align 8
  %224 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %223, i32 0, i32 3
  store i32 319, i32* %224, align 4
  %225 = load %struct.TYPE_20__*, %struct.TYPE_20__** @Vdp1Regs, align 8
  %226 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %225, i32 0, i32 4
  store i32 223, i32* %226, align 4
  %227 = load %struct.TYPE_34__*, %struct.TYPE_34__** @Vdp2Regs, align 8
  %228 = call i32 @memset(%struct.TYPE_34__* %227, i32 0, i32 4)
  %229 = load %struct.TYPE_34__*, %struct.TYPE_34__** @Vdp2Regs, align 8
  %230 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %229, i32 0, i32 0
  store i32 32768, i32* %230, align 4
  %231 = load %struct.TYPE_34__*, %struct.TYPE_34__** @Vdp2Regs, align 8
  %232 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %231, i32 0, i32 1
  store i32 522, i32* %232, align 4
  %233 = load %struct.TYPE_34__*, %struct.TYPE_34__** @Vdp2Regs, align 8
  %234 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %233, i32 0, i32 2
  store i32 3908, i32* %234, align 4
  %235 = load %struct.TYPE_34__*, %struct.TYPE_34__** @Vdp2Regs, align 8
  %236 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %235, i32 0, i32 3
  store i32 65535, i32* %236, align 4
  %237 = load %struct.TYPE_34__*, %struct.TYPE_34__** @Vdp2Regs, align 8
  %238 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %237, i32 0, i32 4
  store i32 65535, i32* %238, align 4
  %239 = load %struct.TYPE_34__*, %struct.TYPE_34__** @Vdp2Regs, align 8
  %240 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %239, i32 0, i32 5
  store i32 65535, i32* %240, align 4
  %241 = load %struct.TYPE_34__*, %struct.TYPE_34__** @Vdp2Regs, align 8
  %242 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %241, i32 0, i32 6
  store i32 65535, i32* %242, align 4
  %243 = load %struct.TYPE_34__*, %struct.TYPE_34__** @Vdp2Regs, align 8
  %244 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %243, i32 0, i32 7
  store i32 65535, i32* %244, align 4
  %245 = load %struct.TYPE_34__*, %struct.TYPE_34__** @Vdp2Regs, align 8
  %246 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %245, i32 0, i32 8
  store i32 65535, i32* %246, align 4
  %247 = load %struct.TYPE_34__*, %struct.TYPE_34__** @Vdp2Regs, align 8
  %248 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %247, i32 0, i32 9
  store i32 65535, i32* %248, align 4
  %249 = load %struct.TYPE_34__*, %struct.TYPE_34__** @Vdp2Regs, align 8
  %250 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %249, i32 0, i32 10
  store i32 1, i32* %250, align 4
  %251 = load %struct.TYPE_34__*, %struct.TYPE_34__** @Vdp2Regs, align 8
  %252 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %251, i32 0, i32 11
  store i32 32768, i32* %252, align 4
  %253 = load %struct.TYPE_34__*, %struct.TYPE_34__** @Vdp2Regs, align 8
  %254 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %253, i32 0, i32 12
  store i32 771, i32* %254, align 4
  %255 = load %struct.TYPE_34__*, %struct.TYPE_34__** @Vdp2Regs, align 8
  %256 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %255, i32 0, i32 13
  store i32 771, i32* %256, align 4
  %257 = load %struct.TYPE_34__*, %struct.TYPE_34__** @Vdp2Regs, align 8
  %258 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %257, i32 0, i32 24
  %259 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %258, i32 0, i32 0
  store i32 65536, i32* %259, align 4
  %260 = load %struct.TYPE_34__*, %struct.TYPE_34__** @Vdp2Regs, align 8
  %261 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %260, i32 0, i32 23
  %262 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %261, i32 0, i32 0
  store i32 65536, i32* %262, align 4
  %263 = load %struct.TYPE_34__*, %struct.TYPE_34__** @Vdp2Regs, align 8
  %264 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %263, i32 0, i32 22
  %265 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %264, i32 0, i32 0
  store i32 65536, i32* %265, align 4
  %266 = load %struct.TYPE_34__*, %struct.TYPE_34__** @Vdp2Regs, align 8
  %267 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %266, i32 0, i32 21
  %268 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %267, i32 0, i32 0
  store i32 65536, i32* %268, align 4
  %269 = load %struct.TYPE_34__*, %struct.TYPE_34__** @Vdp2Regs, align 8
  %270 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %269, i32 0, i32 14
  store i32 16384, i32* %270, align 4
  %271 = load %struct.TYPE_34__*, %struct.TYPE_34__** @Vdp2Regs, align 8
  %272 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %271, i32 0, i32 15
  store i32 32, i32* %272, align 4
  %273 = load %struct.TYPE_34__*, %struct.TYPE_34__** @Vdp2Regs, align 8
  %274 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %273, i32 0, i32 16
  store i32 7, i32* %274, align 4
  %275 = load %struct.TYPE_34__*, %struct.TYPE_34__** @Vdp2Regs, align 8
  %276 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %275, i32 0, i32 17
  store i32 1, i32* %276, align 4
  %277 = load %struct.TYPE_34__*, %struct.TYPE_34__** @Vdp2Regs, align 8
  %278 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %277, i32 0, i32 18
  store i32 512, i32* %278, align 4
  %279 = load %struct.TYPE_34__*, %struct.TYPE_34__** @Vdp2Regs, align 8
  %280 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %279, i32 0, i32 19
  store i32 512, i32* %280, align 4
  %281 = load %struct.TYPE_34__*, %struct.TYPE_34__** @Vdp2Regs, align 8
  %282 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %281, i32 0, i32 20
  store i32 512, i32* %282, align 4
  ret void
}

declare dso_local i32 @BiosInit(...) #1

declare dso_local i32 @MappedMemoryReadLong(i32) #1

declare dso_local i32 @MappedMemoryWriteLong(i32, i32) #1

declare dso_local i32 @SH2GetRegisters(%struct.TYPE_24__*, %struct.TYPE_25__*) #1

declare dso_local i32 @SH2SetRegisters(%struct.TYPE_24__*, %struct.TYPE_25__*) #1

declare dso_local i32 @memset(%struct.TYPE_34__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
