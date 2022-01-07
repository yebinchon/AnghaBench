; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_bond.c_bond_add_interface.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_bond.c_bond_add_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.TYPE_24__ = type { i8*, i32, i32, i64, i32, i64, i32, i32*, %struct.TYPE_25__** }
%struct.TYPE_25__ = type { i32, %struct.TYPE_23__, %struct.ether_addr, i32, i32, %struct.TYPE_24__* }
%struct.TYPE_23__ = type { i32, i32, i32 }
%struct.ether_addr = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"if_bond: interface %s doesn't support mtu %d\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"bond_add_interface\00", align 1
@IFEF_VLAN = common dso_local global i32 0, align 4
@IFEF_BOND = common dso_local global i32 0, align 4
@IFF_RUNNING = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [90 x i8] c"bond_add_interface(%s, %s)  hwassist values don't match 0x%x != 0x%x, using 0x%x instead\0A\00", align 1
@po_port_list = common dso_local global i32 0, align 4
@ETHERMTU = common dso_local global i32 0, align 4
@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@IFT_ETHER = common dso_local global i32 0, align 4
@BOND_ADD_PROGRESS_IN_LIST = common dso_local global i32 0, align 4
@M_BOND = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BOND_ADD_PROGRESS_PROTO_ATTACHED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [53 x i8] c"bond_add_interface(%s, %s): SIOCSIFMTU %d failed %d\0A\00", align 1
@BOND_ADD_PROGRESS_MTU_SET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [62 x i8] c"bond_add_interface(%s, %s): multicast_list_program failed %d\0A\00", align 1
@IFF_UP = common dso_local global i32 0, align 4
@SIOCSIFFLAGS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [52 x i8] c"bond_add_interface(%s, %s): SIOCSIFFLAGS failed %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"bond_add_interface(%s, %s): if_siflladdr failed %d\0A\00", align 1
@BOND_ADD_PROGRESS_LLADDR_SET = common dso_local global i32 0, align 4
@IF_BOND_MODE_LACP = common dso_local global i64 0, align 8
@KEV_DL_LINK_OFF = common dso_local global i32 0, align 4
@KEV_DL_LINK_ON = common dso_local global i32 0, align 4
@IFT_IEEE8023ADLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, %struct.ifnet*)* @bond_add_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bond_add_interface(%struct.ifnet* %0, %struct.ifnet* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_24__*, align 8
  %11 = alloca %struct.TYPE_25__**, align 8
  %12 = alloca %struct.TYPE_25__**, align 8
  %13 = alloca %struct.TYPE_25__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store %struct.ifnet* %1, %struct.ifnet** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %20 = load i32, i32* @FALSE, align 4
  store i32 %20, i32* %9, align 4
  store %struct.TYPE_25__** null, %struct.TYPE_25__*** %11, align 8
  store %struct.TYPE_25__** null, %struct.TYPE_25__*** %12, align 8
  store i32 0, i32* %14, align 4
  %21 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %22 = call i64 @IFNET_IS_INTCOPROC(%struct.ifnet* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* @EINVAL, align 4
  store i32 %25, i32* %3, align 4
  br label %509

26:                                               ; preds = %2
  %27 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %28 = call %struct.TYPE_25__* @bondport_create(%struct.ifnet* %27, i32 32768, i32 1, i32 0, i32* %7)
  store %struct.TYPE_25__* %28, %struct.TYPE_25__** %13, align 8
  %29 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %30 = icmp eq %struct.TYPE_25__* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %3, align 4
  br label %509

33:                                               ; preds = %26
  %34 = call i32 (...) @bond_lock()
  %35 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %36 = call i64 @ifnet_softc(%struct.ifnet* %35)
  %37 = inttoptr i64 %36 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %37, %struct.TYPE_24__** %10, align 8
  %38 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %39 = icmp eq %struct.TYPE_24__* %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %33
  %41 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %42 = call i64 @ifbond_flags_if_detaching(%struct.TYPE_24__* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %40, %33
  %45 = call i32 (...) @bond_unlock()
  %46 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %47 = call i32 @bondport_free(%struct.TYPE_25__* %46)
  %48 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %49 = icmp eq %struct.TYPE_24__* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i32, i32* @EOPNOTSUPP, align 4
  br label %54

52:                                               ; preds = %44
  %53 = load i32, i32* @EBUSY, align 4
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi i32 [ %51, %50 ], [ %53, %52 ]
  store i32 %55, i32* %3, align 4
  br label %509

56:                                               ; preds = %40
  %57 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %58 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %59 = call i32 @bond_device_mtu(%struct.ifnet* %57, %struct.TYPE_24__* %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %85

62:                                               ; preds = %56
  %63 = load i32, i32* %6, align 4
  %64 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %65 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp sgt i32 %63, %67
  br i1 %68, label %76, label %69

69:                                               ; preds = %62
  %70 = load i32, i32* %6, align 4
  %71 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %72 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp slt i32 %70, %74
  br i1 %75, label %76, label %85

76:                                               ; preds = %69, %62
  %77 = call i32 (...) @bond_unlock()
  %78 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %79 = call i8* @bondport_get_name(%struct.TYPE_25__* %78)
  %80 = load i32, i32* %6, align 4
  %81 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* %79, i32 %80)
  %82 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %83 = call i32 @bondport_free(%struct.TYPE_25__* %82)
  %84 = load i32, i32* @EINVAL, align 4
  store i32 %84, i32* %3, align 4
  br label %509

85:                                               ; preds = %69, %56
  %86 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %87 = call i32 @ifbond_retain(%struct.TYPE_24__* %86)
  %88 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %89 = call i32 @ifbond_wait(%struct.TYPE_24__* %88, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %90 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %91 = call i64 @ifbond_flags_if_detaching(%struct.TYPE_24__* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %85
  %94 = load i32, i32* @EBUSY, align 4
  store i32 %94, i32* %7, align 4
  br label %500

95:                                               ; preds = %85
  %96 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %97 = call i32* @bond_lookup_port(%struct.ifnet* %96)
  %98 = icmp ne i32* %97, null
  br i1 %98, label %99, label %101

99:                                               ; preds = %95
  %100 = load i32, i32* @EBUSY, align 4
  store i32 %100, i32* %7, align 4
  br label %500

101:                                              ; preds = %95
  %102 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %103 = call i32 @ifnet_lock_exclusive(%struct.ifnet* %102)
  %104 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %105 = call i32 @ifnet_eflags(%struct.ifnet* %104)
  %106 = load i32, i32* @IFEF_VLAN, align 4
  %107 = load i32, i32* @IFEF_BOND, align 4
  %108 = or i32 %106, %107
  %109 = and i32 %105, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %101
  %112 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %113 = call i32 @ifnet_lock_done(%struct.ifnet* %112)
  %114 = load i32, i32* @EBUSY, align 4
  store i32 %114, i32* %7, align 4
  br label %500

115:                                              ; preds = %101
  %116 = load i32, i32* @IFEF_BOND, align 4
  %117 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %118 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = or i32 %119, %116
  store i32 %120, i32* %118, align 4
  %121 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %122 = call i32 @ifnet_lock_done(%struct.ifnet* %121)
  %123 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %123, i32 0, i32 6
  %125 = call i64 @TAILQ_EMPTY(i32* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %143

127:                                              ; preds = %115
  %128 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %129 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %130 = call i32 @ifnet_offload(%struct.ifnet* %129)
  %131 = call i32 @ifnet_set_offload(%struct.ifnet* %128, i32 %130)
  %132 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %133 = load i32, i32* @IFF_RUNNING, align 4
  %134 = load i32, i32* @IFF_RUNNING, align 4
  %135 = call i32 @ifnet_set_flags(%struct.ifnet* %132, i32 %133, i32 %134)
  %136 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %137 = call i32 @ifbond_flags_lladdr(%struct.TYPE_24__* %136)
  %138 = load i32, i32* @FALSE, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %142

140:                                              ; preds = %127
  %141 = load i32, i32* @TRUE, align 4
  store i32 %141, i32* %9, align 4
  br label %142

142:                                              ; preds = %140, %127
  br label %168

143:                                              ; preds = %115
  %144 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %145 = call i32 @ifnet_offload(%struct.ifnet* %144)
  store i32 %145, i32* %15, align 4
  %146 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %147 = call i32 @ifnet_offload(%struct.ifnet* %146)
  store i32 %147, i32* %16, align 4
  %148 = load i32, i32* %15, align 4
  %149 = load i32, i32* %16, align 4
  %150 = icmp ne i32 %148, %149
  br i1 %150, label %151, label %167

151:                                              ; preds = %143
  %152 = load i32, i32* %15, align 4
  %153 = load i32, i32* %16, align 4
  %154 = and i32 %152, %153
  store i32 %154, i32* %17, align 4
  %155 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %156 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %155, i32 0, i32 0
  %157 = load i8*, i8** %156, align 8
  %158 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %159 = call i8* @bondport_get_name(%struct.TYPE_25__* %158)
  %160 = load i32, i32* %15, align 4
  %161 = load i32, i32* %16, align 4
  %162 = load i32, i32* %17, align 4
  %163 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.2, i64 0, i64 0), i8* %157, i8* %159, i32 %160, i32 %161, i32 %162)
  %164 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %165 = load i32, i32* %17, align 4
  %166 = call i32 @ifnet_set_offload(%struct.ifnet* %164, i32 %165)
  br label %167

167:                                              ; preds = %151, %143
  br label %168

168:                                              ; preds = %167, %142
  %169 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %170 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %171 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %170, i32 0, i32 5
  store %struct.TYPE_24__* %169, %struct.TYPE_24__** %171, align 8
  %172 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %173 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %172, i32 0, i32 2
  %174 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %175 = call i32* @IF_LLADDR(%struct.ifnet* %174)
  %176 = call i32 @ether_addr_copy(%struct.ether_addr* %173, i32* %175)
  %177 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %178 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %177, i32 0, i32 6
  %179 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %180 = load i32, i32* @po_port_list, align 4
  %181 = call i32 @TAILQ_INSERT_TAIL(i32* %178, %struct.TYPE_25__* %179, i32 %180)
  %182 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %183 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %183, align 8
  %186 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %187 = call i64 @ifnet_mtu(%struct.ifnet* %186)
  %188 = icmp eq i64 %187, 0
  br i1 %188, label %189, label %193

189:                                              ; preds = %168
  %190 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %191 = load i32, i32* @ETHERMTU, align 4
  %192 = call i32 @ifnet_set_mtu(%struct.ifnet* %190, i32 %191)
  br label %193

193:                                              ; preds = %189, %168
  %194 = call i32 (...) @bond_unlock()
  %195 = load i32, i32* %9, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %204

197:                                              ; preds = %193
  %198 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %199 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %200 = call i32* @IF_LLADDR(%struct.ifnet* %199)
  %201 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %202 = load i32, i32* @IFT_ETHER, align 4
  %203 = call i32 @ifnet_set_lladdr_and_type(%struct.ifnet* %198, i32* %200, i32 %201, i32 %202)
  br label %204

204:                                              ; preds = %197, %193
  %205 = load i32, i32* @BOND_ADD_PROGRESS_IN_LIST, align 4
  %206 = load i32, i32* %14, align 4
  %207 = or i32 %206, %205
  store i32 %207, i32* %14, align 4
  %208 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %209 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 8
  %211 = sext i32 %210 to i64
  %212 = mul i64 8, %211
  %213 = trunc i64 %212 to i32
  %214 = load i32, i32* @M_BOND, align 4
  %215 = load i32, i32* @M_WAITOK, align 4
  %216 = call i64 @_MALLOC(i32 %213, i32 %214, i32 %215)
  %217 = inttoptr i64 %216 to %struct.TYPE_25__**
  store %struct.TYPE_25__** %217, %struct.TYPE_25__*** %11, align 8
  %218 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %11, align 8
  %219 = icmp eq %struct.TYPE_25__** %218, null
  br i1 %219, label %220, label %222

220:                                              ; preds = %204
  %221 = load i32, i32* @ENOMEM, align 4
  store i32 %221, i32* %7, align 4
  br label %397

222:                                              ; preds = %204
  %223 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %224 = call i32 @bond_attach_protocol(%struct.ifnet* %223)
  store i32 %224, i32* %7, align 4
  %225 = load i32, i32* %7, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %228

227:                                              ; preds = %222
  br label %397

228:                                              ; preds = %222
  %229 = load i32, i32* @BOND_ADD_PROGRESS_PROTO_ATTACHED, align 4
  %230 = load i32, i32* %14, align 4
  %231 = or i32 %230, %229
  store i32 %231, i32* %14, align 4
  %232 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %233 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %234 = call i32 @bond_device_mtu(%struct.ifnet* %232, %struct.TYPE_24__* %233)
  store i32 %234, i32* %6, align 4
  %235 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %236 = load i32, i32* %6, align 4
  %237 = call i32 @siocsifmtu(%struct.ifnet* %235, i32 %236)
  store i32 %237, i32* %7, align 4
  %238 = load i32, i32* %7, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %249

240:                                              ; preds = %228
  %241 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %242 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %241, i32 0, i32 0
  %243 = load i8*, i8** %242, align 8
  %244 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %245 = call i8* @bondport_get_name(%struct.TYPE_25__* %244)
  %246 = load i32, i32* %6, align 4
  %247 = load i32, i32* %7, align 4
  %248 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i8* %243, i8* %245, i32 %246, i32 %247)
  br label %397

249:                                              ; preds = %228
  %250 = load i32, i32* @BOND_ADD_PROGRESS_MTU_SET, align 4
  %251 = load i32, i32* %14, align 4
  %252 = or i32 %251, %250
  store i32 %252, i32* %14, align 4
  %253 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %254 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %253, i32 0, i32 4
  %255 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %256 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %257 = call i32 @multicast_list_program(i32* %254, %struct.ifnet* %255, %struct.ifnet* %256)
  store i32 %257, i32* %7, align 4
  %258 = load i32, i32* %7, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %268

260:                                              ; preds = %249
  %261 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %262 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %261, i32 0, i32 0
  %263 = load i8*, i8** %262, align 8
  %264 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %265 = call i8* @bondport_get_name(%struct.TYPE_25__* %264)
  %266 = load i32, i32* %7, align 4
  %267 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.4, i64 0, i64 0), i8* %263, i8* %265, i32 %266)
  br label %397

268:                                              ; preds = %249
  %269 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %270 = load i32, i32* @IFF_UP, align 4
  %271 = load i32, i32* @IFF_UP, align 4
  %272 = call i32 @ifnet_set_flags(%struct.ifnet* %269, i32 %270, i32 %271)
  %273 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %274 = load i32, i32* @SIOCSIFFLAGS, align 4
  %275 = call i32 @ifnet_ioctl(%struct.ifnet* %273, i32 0, i32 %274, i32* null)
  store i32 %275, i32* %7, align 4
  %276 = load i32, i32* %7, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %286

278:                                              ; preds = %268
  %279 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %280 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %279, i32 0, i32 0
  %281 = load i8*, i8** %280, align 8
  %282 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %283 = call i8* @bondport_get_name(%struct.TYPE_25__* %282)
  %284 = load i32, i32* %7, align 4
  %285 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0), i8* %281, i8* %283, i32 %284)
  br label %397

286:                                              ; preds = %268
  %287 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %288 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %289 = call i32* @IF_LLADDR(%struct.ifnet* %288)
  %290 = bitcast i32* %289 to %struct.ether_addr*
  %291 = call i32 @if_siflladdr(%struct.ifnet* %287, %struct.ether_addr* %290)
  store i32 %291, i32* %7, align 4
  %292 = load i32, i32* %7, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %302

294:                                              ; preds = %286
  %295 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %296 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %295, i32 0, i32 0
  %297 = load i8*, i8** %296, align 8
  %298 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %299 = call i8* @bondport_get_name(%struct.TYPE_25__* %298)
  %300 = load i32, i32* %7, align 4
  %301 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0), i8* %297, i8* %299, i32 %300)
  br label %397

302:                                              ; preds = %286
  %303 = load i32, i32* @BOND_ADD_PROGRESS_LLADDR_SET, align 4
  %304 = load i32, i32* %14, align 4
  %305 = or i32 %304, %303
  store i32 %305, i32* %14, align 4
  %306 = call i32 (...) @bond_lock()
  %307 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %308 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %307, i32 0, i32 0
  store i32 1, i32* %308, align 8
  %309 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %310 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %309, i32 0, i32 2
  %311 = load i32, i32* %310, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %325

313:                                              ; preds = %302
  %314 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %315 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %314, i32 0, i32 8
  %316 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %315, align 8
  %317 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %11, align 8
  %318 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %319 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %318, i32 0, i32 2
  %320 = load i32, i32* %319, align 4
  %321 = sext i32 %320 to i64
  %322 = mul i64 8, %321
  %323 = trunc i64 %322 to i32
  %324 = call i32 @bcopy(%struct.TYPE_25__** %316, %struct.TYPE_25__** %317, i32 %323)
  br label %325

325:                                              ; preds = %313, %302
  %326 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %327 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %326, i32 0, i32 8
  %328 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %327, align 8
  store %struct.TYPE_25__** %328, %struct.TYPE_25__*** %12, align 8
  %329 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %11, align 8
  %330 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %331 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %330, i32 0, i32 8
  store %struct.TYPE_25__** %329, %struct.TYPE_25__*** %331, align 8
  %332 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %333 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %332, i32 0, i32 3
  %334 = load i64, i64* %333, align 8
  %335 = load i64, i64* @IF_BOND_MODE_LACP, align 8
  %336 = icmp eq i64 %334, %335
  br i1 %336, label %337, label %358

337:                                              ; preds = %325
  %338 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %339 = call i32 @bondport_start(%struct.TYPE_25__* %338)
  %340 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %341 = call i64 @ifbond_selection(%struct.TYPE_24__* %340)
  %342 = icmp ne i64 %341, 0
  br i1 %342, label %343, label %357

343:                                              ; preds = %337
  %344 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %345 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %344, i32 0, i32 7
  %346 = load i32*, i32** %345, align 8
  %347 = icmp eq i32* %346, null
  br i1 %347, label %348, label %350

348:                                              ; preds = %343
  %349 = load i32, i32* @KEV_DL_LINK_OFF, align 4
  br label %352

350:                                              ; preds = %343
  %351 = load i32, i32* @KEV_DL_LINK_ON, align 4
  br label %352

352:                                              ; preds = %350, %348
  %353 = phi i32 [ %349, %348 ], [ %351, %350 ]
  store i32 %353, i32* %8, align 4
  %354 = load i32, i32* %8, align 4
  %355 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %356 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %355, i32 0, i32 4
  store i32 %354, i32* %356, align 8
  br label %357

357:                                              ; preds = %352, %337
  br label %379

358:                                              ; preds = %325
  %359 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %360 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %359, i32 0, i32 3
  %361 = call i64 @media_active(i32* %360)
  %362 = icmp ne i64 %361, 0
  br i1 %362, label %363, label %375

363:                                              ; preds = %358
  %364 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %365 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %364, i32 0, i32 2
  %366 = load i32, i32* %365, align 4
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %368, label %372

368:                                              ; preds = %363
  %369 = load i32, i32* @KEV_DL_LINK_ON, align 4
  store i32 %369, i32* %8, align 4
  %370 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %371 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %370, i32 0, i32 4
  store i32 %369, i32* %371, align 8
  br label %372

372:                                              ; preds = %368, %363
  %373 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %374 = call i32 @bondport_enable_distributing(%struct.TYPE_25__* %373)
  br label %378

375:                                              ; preds = %358
  %376 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %377 = call i32 @bondport_disable_distributing(%struct.TYPE_25__* %376)
  br label %378

378:                                              ; preds = %375, %372
  br label %379

379:                                              ; preds = %378, %357
  %380 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %381 = call i32 @ifbond_signal(%struct.TYPE_24__* %380, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %382 = call i32 (...) @bond_unlock()
  %383 = load i32, i32* %8, align 4
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %385, label %389

385:                                              ; preds = %379
  %386 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %387 = load i32, i32* %8, align 4
  %388 = call i32 @interface_link_event(%struct.ifnet* %386, i32 %387)
  br label %389

389:                                              ; preds = %385, %379
  %390 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %12, align 8
  %391 = icmp ne %struct.TYPE_25__** %390, null
  br i1 %391, label %392, label %396

392:                                              ; preds = %389
  %393 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %12, align 8
  %394 = load i32, i32* @M_BOND, align 4
  %395 = call i32 @FREE(%struct.TYPE_25__** %393, i32 %394)
  br label %396

396:                                              ; preds = %392, %389
  store i32 0, i32* %3, align 4
  br label %509

397:                                              ; preds = %294, %278, %260, %240, %227, %220
  %398 = call i32 (...) @bond_assert_lock_not_held()
  %399 = load i32, i32* %9, align 4
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %405

401:                                              ; preds = %397
  %402 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %403 = load i32, i32* @IFT_IEEE8023ADLAG, align 4
  %404 = call i32 @ifnet_set_lladdr_and_type(%struct.ifnet* %402, i32* null, i32 0, i32 %403)
  br label %405

405:                                              ; preds = %401, %397
  %406 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %11, align 8
  %407 = icmp ne %struct.TYPE_25__** %406, null
  br i1 %407, label %408, label %412

408:                                              ; preds = %405
  %409 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %11, align 8
  %410 = load i32, i32* @M_BOND, align 4
  %411 = call i32 @FREE(%struct.TYPE_25__** %409, i32 %410)
  br label %412

412:                                              ; preds = %408, %405
  %413 = load i32, i32* %14, align 4
  %414 = load i32, i32* @BOND_ADD_PROGRESS_LLADDR_SET, align 4
  %415 = and i32 %413, %414
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %417, label %433

417:                                              ; preds = %412
  %418 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %419 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %420 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %419, i32 0, i32 2
  %421 = call i32 @if_siflladdr(%struct.ifnet* %418, %struct.ether_addr* %420)
  store i32 %421, i32* %18, align 4
  %422 = load i32, i32* %18, align 4
  %423 = icmp ne i32 %422, 0
  br i1 %423, label %424, label %432

424:                                              ; preds = %417
  %425 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %426 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %425, i32 0, i32 0
  %427 = load i8*, i8** %426, align 8
  %428 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %429 = call i8* @bondport_get_name(%struct.TYPE_25__* %428)
  %430 = load i32, i32* %18, align 4
  %431 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0), i8* %427, i8* %429, i32 %430)
  br label %432

432:                                              ; preds = %424, %417
  br label %433

433:                                              ; preds = %432, %412
  %434 = load i32, i32* %14, align 4
  %435 = load i32, i32* @BOND_ADD_PROGRESS_PROTO_ATTACHED, align 4
  %436 = and i32 %434, %435
  %437 = icmp ne i32 %436, 0
  br i1 %437, label %438, label %441

438:                                              ; preds = %433
  %439 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %440 = call i32 @bond_detach_protocol(%struct.ifnet* %439)
  br label %441

441:                                              ; preds = %438, %433
  %442 = load i32, i32* %14, align 4
  %443 = load i32, i32* @BOND_ADD_PROGRESS_MTU_SET, align 4
  %444 = and i32 %442, %443
  %445 = icmp ne i32 %444, 0
  br i1 %445, label %446, label %468

446:                                              ; preds = %441
  %447 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %448 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %449 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %448, i32 0, i32 1
  %450 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %449, i32 0, i32 2
  %451 = load i32, i32* %450, align 4
  %452 = call i32 @siocsifmtu(%struct.ifnet* %447, i32 %451)
  store i32 %452, i32* %19, align 4
  %453 = load i32, i32* %19, align 4
  %454 = icmp ne i32 %453, 0
  br i1 %454, label %455, label %467

455:                                              ; preds = %446
  %456 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %457 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %456, i32 0, i32 0
  %458 = load i8*, i8** %457, align 8
  %459 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %460 = call i8* @bondport_get_name(%struct.TYPE_25__* %459)
  %461 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %462 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %461, i32 0, i32 1
  %463 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %462, i32 0, i32 2
  %464 = load i32, i32* %463, align 4
  %465 = load i32, i32* %19, align 4
  %466 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i8* %458, i8* %460, i32 %464, i32 %465)
  br label %467

467:                                              ; preds = %455, %446
  br label %468

468:                                              ; preds = %467, %441
  %469 = call i32 (...) @bond_lock()
  %470 = load i32, i32* %14, align 4
  %471 = load i32, i32* @BOND_ADD_PROGRESS_IN_LIST, align 4
  %472 = and i32 %470, %471
  %473 = icmp ne i32 %472, 0
  br i1 %473, label %474, label %484

474:                                              ; preds = %468
  %475 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %476 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %475, i32 0, i32 6
  %477 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %478 = load i32, i32* @po_port_list, align 4
  %479 = call i32 @TAILQ_REMOVE(i32* %476, %struct.TYPE_25__* %477, i32 %478)
  %480 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %481 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %480, i32 0, i32 1
  %482 = load i32, i32* %481, align 8
  %483 = add nsw i32 %482, -1
  store i32 %483, i32* %481, align 8
  br label %484

484:                                              ; preds = %474, %468
  %485 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %486 = load i32, i32* @IFEF_BOND, align 4
  %487 = call i32 @ifnet_set_eflags(%struct.ifnet* %485, i32 0, i32 %486)
  %488 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %489 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %488, i32 0, i32 6
  %490 = call i64 @TAILQ_EMPTY(i32* %489)
  %491 = icmp ne i64 %490, 0
  br i1 %491, label %492, label %499

492:                                              ; preds = %484
  %493 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %494 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %493, i32 0, i32 5
  store i64 0, i64* %494, align 8
  %495 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %496 = call i32 @ifnet_set_mtu(%struct.ifnet* %495, i32 0)
  %497 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %498 = call i32 @ifnet_set_offload(%struct.ifnet* %497, i32 0)
  br label %499

499:                                              ; preds = %492, %484
  br label %500

500:                                              ; preds = %499, %111, %99, %93
  %501 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %502 = call i32 @ifbond_signal(%struct.TYPE_24__* %501, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %503 = call i32 (...) @bond_unlock()
  %504 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %505 = call i32 @ifbond_release(%struct.TYPE_24__* %504)
  %506 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %507 = call i32 @bondport_free(%struct.TYPE_25__* %506)
  %508 = load i32, i32* %7, align 4
  store i32 %508, i32* %3, align 4
  br label %509

509:                                              ; preds = %500, %396, %76, %54, %31, %24
  %510 = load i32, i32* %3, align 4
  ret i32 %510
}

declare dso_local i64 @IFNET_IS_INTCOPROC(%struct.ifnet*) #1

declare dso_local %struct.TYPE_25__* @bondport_create(%struct.ifnet*, i32, i32, i32, i32*) #1

declare dso_local i32 @bond_lock(...) #1

declare dso_local i64 @ifnet_softc(%struct.ifnet*) #1

declare dso_local i64 @ifbond_flags_if_detaching(%struct.TYPE_24__*) #1

declare dso_local i32 @bond_unlock(...) #1

declare dso_local i32 @bondport_free(%struct.TYPE_25__*) #1

declare dso_local i32 @bond_device_mtu(%struct.ifnet*, %struct.TYPE_24__*) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i8* @bondport_get_name(%struct.TYPE_25__*) #1

declare dso_local i32 @ifbond_retain(%struct.TYPE_24__*) #1

declare dso_local i32 @ifbond_wait(%struct.TYPE_24__*, i8*) #1

declare dso_local i32* @bond_lookup_port(%struct.ifnet*) #1

declare dso_local i32 @ifnet_lock_exclusive(%struct.ifnet*) #1

declare dso_local i32 @ifnet_eflags(%struct.ifnet*) #1

declare dso_local i32 @ifnet_lock_done(%struct.ifnet*) #1

declare dso_local i64 @TAILQ_EMPTY(i32*) #1

declare dso_local i32 @ifnet_set_offload(%struct.ifnet*, i32) #1

declare dso_local i32 @ifnet_offload(%struct.ifnet*) #1

declare dso_local i32 @ifnet_set_flags(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @ifbond_flags_lladdr(%struct.TYPE_24__*) #1

declare dso_local i32 @ether_addr_copy(%struct.ether_addr*, i32*) #1

declare dso_local i32* @IF_LLADDR(%struct.ifnet*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.TYPE_25__*, i32) #1

declare dso_local i64 @ifnet_mtu(%struct.ifnet*) #1

declare dso_local i32 @ifnet_set_mtu(%struct.ifnet*, i32) #1

declare dso_local i32 @ifnet_set_lladdr_and_type(%struct.ifnet*, i32*, i32, i32) #1

declare dso_local i64 @_MALLOC(i32, i32, i32) #1

declare dso_local i32 @bond_attach_protocol(%struct.ifnet*) #1

declare dso_local i32 @siocsifmtu(%struct.ifnet*, i32) #1

declare dso_local i32 @multicast_list_program(i32*, %struct.ifnet*, %struct.ifnet*) #1

declare dso_local i32 @ifnet_ioctl(%struct.ifnet*, i32, i32, i32*) #1

declare dso_local i32 @if_siflladdr(%struct.ifnet*, %struct.ether_addr*) #1

declare dso_local i32 @bcopy(%struct.TYPE_25__**, %struct.TYPE_25__**, i32) #1

declare dso_local i32 @bondport_start(%struct.TYPE_25__*) #1

declare dso_local i64 @ifbond_selection(%struct.TYPE_24__*) #1

declare dso_local i64 @media_active(i32*) #1

declare dso_local i32 @bondport_enable_distributing(%struct.TYPE_25__*) #1

declare dso_local i32 @bondport_disable_distributing(%struct.TYPE_25__*) #1

declare dso_local i32 @ifbond_signal(%struct.TYPE_24__*, i8*) #1

declare dso_local i32 @interface_link_event(%struct.ifnet*, i32) #1

declare dso_local i32 @FREE(%struct.TYPE_25__**, i32) #1

declare dso_local i32 @bond_assert_lock_not_held(...) #1

declare dso_local i32 @bond_detach_protocol(%struct.ifnet*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.TYPE_25__*, i32) #1

declare dso_local i32 @ifnet_set_eflags(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @ifbond_release(%struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
